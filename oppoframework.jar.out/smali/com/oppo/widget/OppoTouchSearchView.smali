.class public Lcom/oppo/widget/OppoTouchSearchView;
.super Landroid/view/View;
.source "OppoTouchSearchView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoTouchSearchView$UnionKey;,
        Lcom/oppo/widget/OppoTouchSearchView$Key;,
        Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;
    }
.end annotation


# static fields
.field public static final BG_ALIGN_LEFT:I = 0x1

.field public static final BG_ALIGN_MIDDLE:I = 0x0

.field public static final BG_ALIGN_RIGHT:I = 0x2

.field public static final CHAR_COMPARATOR:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final INVALID_POINTER:I = -0x1

.field private static final SEARCH_OFFSET:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OppoSpeedSearchView"

.field private static final WELL_DRAWABLE_POSITION:I

.field private static final sCollator:Ljava/text/Collator;


# instance fields
.field private KEYS:[Ljava/lang/String;

.field private UNIONKEYS:[Ljava/lang/String;

.field private mActivePointerId:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundAlignMode:I

.field private mBackgroundLeftMargin:I

.field private mBackgroundRightMargin:I

.field private mCellHeight:I

.field private mCellWidth:I

.field private mDisplayKey:Ljava/lang/CharSequence;

.field private mDot:Ljava/lang/CharSequence;

.field private mFirstLayout:Z

.field private mFrameChanged:Z

.field private mKeyDrawableHeight:I

.field private mKeyDrawableNames:[Ljava/lang/String;

.field private mKeyDrawableWidth:I

.field private mKeyDrawables:[Landroid/graphics/drawable/Drawable;

.field private mKeyPaddingX:I

.field private mKeyPaddingY:I

.field private mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

.field private mPopupDrawablesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupTextView:Landroid/widget/TextView;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mPopupWindowHeight:I

.field private mPopupWindowMinTop:I

.field private mPopupWindowTextColor:I

.field private mPopupWindowTextSize:I

.field private mPopupWindowWidth:I

.field private mTouchFlag:Z

.field private mTouchSearchActionListener:Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;

.field private mUnionEnable:Z

.field private mUnionKeys:[Lcom/oppo/widget/OppoTouchSearchView$UnionKey;

.field private mWhetherUnion:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 321
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/oppo/widget/OppoTouchSearchView;->sCollator:Ljava/text/Collator;

    .line 322
    new-instance v0, Lcom/oppo/widget/OppoTouchSearchView$1;

    invoke-direct {v0}, Lcom/oppo/widget/OppoTouchSearchView$1;-><init>()V

    sput-object v0, Lcom/oppo/widget/OppoTouchSearchView;->CHAR_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoTouchSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 160
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    iput-boolean v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUnionEnable:Z

    .line 102
    iput-boolean v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFirstLayout:Z

    .line 104
    iput-boolean v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchFlag:Z

    .line 106
    iput-boolean v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFrameChanged:Z

    .line 108
    iput-boolean v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    .line 140
    const-string v4, ""

    iput-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    .line 151
    iput v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mActivePointerId:I

    .line 161
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 163
    .local v3, resources:Landroid/content/res/Resources;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupDrawablesMap:Ljava/util/HashMap;

    .line 165
    sget-object v4, Lcom/android/internal/R$styleable;->OppoTouchSearchView:[I

    invoke-virtual {p1, p2, v4, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 166
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUnionEnable:Z

    .line 167
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 169
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundAlignMode:I

    .line 170
    const/4 v4, 0x4

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundLeftMargin:I

    .line 171
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundRightMargin:I

    .line 173
    const/4 v4, 0x6

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    .line 174
    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    if-ne v5, v4, :cond_0

    .line 176
    const v4, 0x10500db

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    .line 178
    :cond_0
    const/4 v4, 0x7

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    .line 179
    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    if-ne v5, v4, :cond_1

    .line 181
    const v4, 0x10500dc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    .line 183
    :cond_1
    const/16 v4, 0x8

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowMinTop:I

    .line 184
    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowMinTop:I

    if-ne v5, v4, :cond_2

    .line 186
    const v4, 0x10e003e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowMinTop:I

    .line 188
    :cond_2
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextSize:I

    .line 189
    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextSize:I

    if-ne v5, v4, :cond_3

    .line 191
    const v4, 0x10500dd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextSize:I

    .line 193
    :cond_3
    const v4, 0x10600a8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextColor:I

    .line 194
    const/16 v4, 0x9

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextColor:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextColor:I

    .line 196
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 200
    const v4, 0x1040624

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDot:Ljava/lang/CharSequence;

    .line 201
    const v4, 0x1070041

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    .line 202
    const v4, 0x1070042

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->UNIONKEYS:[Ljava/lang/String;

    .line 205
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_4

    .line 207
    const v4, 0x1080914

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 209
    :cond_4
    invoke-direct {p0, v3}, Lcom/oppo/widget/OppoTouchSearchView;->findKeysDrawable(Landroid/content/res/Resources;)V

    .line 210
    const/4 v3, 0x0

    .line 212
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 214
    .local v1, inflate:Landroid/view/LayoutInflater;
    const v4, 0x1090107

    invoke-virtual {v1, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 215
    .local v2, mPopupContent:Landroid/view/ViewGroup;
    new-instance v4, Landroid/widget/PopupWindow;

    invoke-direct {v4, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 216
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 217
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 218
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v8}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 220
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    const v5, 0x10302b3

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 222
    const v4, 0x1020448

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView:Landroid/widget/TextView;

    .line 223
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView:Landroid/widget/TextView;

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 224
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView:Landroid/widget/TextView;

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextColor:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 228
    return-void
.end method

.method static synthetic access$000()Ljava/text/Collator;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/oppo/widget/OppoTouchSearchView;->sCollator:Ljava/text/Collator;

    return-object v0
.end method

.method private drawKeys(Landroid/graphics/Canvas;[Lcom/oppo/widget/OppoTouchSearchView$Key;)V
    .locals 4
    .parameter "canvas"
    .parameter "mkeys"

    .prologue
    .line 904
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 905
    move-object v2, p2

    .line 906
    .local v2, keys:[Lcom/oppo/widget/OppoTouchSearchView$Key;
    array-length v1, v2

    .line 907
    .local v1, keyCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 909
    aget-object v3, v2, v0

    iget-object v3, v3, Lcom/oppo/widget/OppoTouchSearchView$Key;->mKeyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 911
    aget-object v3, v2, v0

    iget-object v3, v3, Lcom/oppo/widget/OppoTouchSearchView$Key;->mKeyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 907
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 915
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 916
    return-void
.end method

.method private findKeysDrawable(Landroid/content/res/Resources;)V
    .locals 13
    .parameter "resources"

    .prologue
    const v10, 0x1070043

    const/4 v12, 0x0

    .line 232
    invoke-virtual {p1, v10}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v6

    .line 237
    .local v6, packageName:Ljava/lang/String;
    invoke-virtual {p1, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableNames:[Ljava/lang/String;

    .line 238
    iget-object v10, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableNames:[Ljava/lang/String;

    array-length v1, v10

    .line 239
    .local v1, count:I
    new-array v10, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v10, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    .line 241
    const/4 v3, 0x0

    .line 242
    .local v3, i:I
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableNames:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    .line 245
    .local v2, extra:Ljava/lang/String;
    const-string v10, "drawable"

    invoke-virtual {p1, v2, v10, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 246
    .local v7, res:I
    iget-object v10, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    aput-object v11, v10, v3

    .line 249
    const/4 v8, 0x0

    .line 250
    .local v8, resName:Ljava/lang/String;
    const-string v10, "#"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 251
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_popup"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 256
    :goto_1
    const-string v10, "drawable"

    invoke-virtual {p1, v8, v10, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 257
    .local v9, resPopup:I
    iget-object v10, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupDrawablesMap:Ljava/util/HashMap;

    invoke-virtual {p1, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    add-int/lit8 v3, v3, 0x1

    .line 242
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 253
    .end local v9           #resPopup:I
    :cond_0
    const-string v8, "touchsearch_well_popup"

    goto :goto_1

    .line 268
    .end local v2           #extra:Ljava/lang/String;
    .end local v7           #res:I
    .end local v8           #resName:Ljava/lang/String;
    :cond_1
    iget-object v10, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v10, v10, v12

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    iput v10, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    .line 269
    iget-object v10, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v10, v10, v12

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    iput v10, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    .line 275
    return-void
.end method

.method static getCharPositionInArray([Ljava/lang/String;IILjava/lang/String;)I
    .locals 5
    .parameter "charArray"
    .parameter "from"
    .parameter "to"
    .parameter "whichChar"

    .prologue
    const/4 v2, -0x1

    .line 350
    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-eqz p3, :cond_0

    const-string v3, ""

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 352
    :cond_0
    const-string v3, "OppoSpeedSearchView"

    const-string v4, "getCharPositionInArray --- error,  return -1"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 388
    :cond_1
    :goto_0
    return v1

    .line 360
    :cond_2
    const-string v3, "#"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 362
    const/4 v1, 0x0

    goto :goto_0

    .line 364
    :cond_3
    if-le p1, p2, :cond_4

    .line 366
    const-string v3, "OppoSpeedSearchView"

    const-string v4, "getCharPositionInArray --- not find , return -1"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 367
    goto :goto_0

    .line 370
    :cond_4
    add-int v3, p1, p2

    div-int/lit8 v1, v3, 0x2

    .line 371
    .local v1, middle:I
    if-le v1, p2, :cond_5

    move v1, v2

    .line 373
    goto :goto_0

    .line 375
    :cond_5
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, lowerCharSequence:Ljava/lang/CharSequence;
    sget-object v2, Lcom/oppo/widget/OppoTouchSearchView;->sCollator:Ljava/text/Collator;

    aget-object v3, p0, v1

    invoke-virtual {v2, v0, v3}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 380
    sget-object v2, Lcom/oppo/widget/OppoTouchSearchView;->sCollator:Ljava/text/Collator;

    aget-object v3, p0, v1

    invoke-virtual {v2, v0, v3}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_6

    .line 382
    add-int/lit8 p1, v1, 0x1

    .line 383
    invoke-static {p0, p1, p2, p3}, Lcom/oppo/widget/OppoTouchSearchView;->getCharPositionInArray([Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 387
    :cond_6
    add-int/lit8 p2, v1, -0x1

    .line 388
    invoke-static {p0, p1, p2, p3}, Lcom/oppo/widget/OppoTouchSearchView;->getCharPositionInArray([Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method static getCharPositionInArray([Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "charArray"
    .parameter "whichChar"

    .prologue
    const/4 v2, -0x1

    .line 333
    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move v1, v2

    .line 345
    :cond_1
    :goto_0
    return v1

    .line 337
    :cond_2
    array-length v0, p0

    .line 338
    .local v0, charCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 340
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p0, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 338
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    .line 345
    goto :goto_0
.end method

.method private getKeyIndices(II[Lcom/oppo/widget/OppoTouchSearchView$Key;)I
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter "mkeys"

    .prologue
    const/4 v3, 0x0

    .line 664
    const/4 v8, -0x1

    .line 665
    .local v8, primaryIndex:I
    move-object v7, p3

    .line 666
    .local v7, keys:[Lcom/oppo/widget/OppoTouchSearchView$Key;
    array-length v6, v7

    .line 668
    .local v6, keyCount:I
    add-int/lit8 v4, v6, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/widget/OppoTouchSearchView;->findCell(IIII[Lcom/oppo/widget/OppoTouchSearchView$Key;)I

    move-result v8

    .line 673
    const/4 v0, -0x1

    if-ne v0, v8, :cond_0

    .line 675
    aget-object v0, v7, v3

    iget v0, v0, Lcom/oppo/widget/OppoTouchSearchView$Key;->y:I

    if-ge p2, v0, :cond_1

    .line 677
    const/4 v8, 0x0

    .line 684
    :cond_0
    :goto_0
    return v8

    .line 679
    :cond_1
    add-int/lit8 v0, v6, -0x1

    aget-object v0, v7, v0

    iget v0, v0, Lcom/oppo/widget/OppoTouchSearchView$Key;->y:I

    if-le p2, v0, :cond_0

    .line 681
    add-int/lit8 v8, v6, -0x1

    goto :goto_0
.end method

.method private invalidateKey(II)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 744
    iget-boolean v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    if-nez v2, :cond_1

    .line 746
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-direct {p0, p1, p2, v3}, Lcom/oppo/widget/OppoTouchSearchView;->getKeyIndices(II[Lcom/oppo/widget/OppoTouchSearchView$Key;)I

    move-result v3

    aget-object v0, v2, v3

    .line 753
    .local v0, key:Lcom/oppo/widget/OppoTouchSearchView$Key;
    :goto_0
    iget v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDot:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1, p2, v2, v3}, Lcom/oppo/widget/OppoTouchSearchView$Key;->getTextToDisplay(IIILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 760
    .local v1, willDisplay:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 762
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lcom/oppo/widget/OppoTouchSearchView$Key;->x:I

    iget v4, v0, Lcom/oppo/widget/OppoTouchSearchView$Key;->y:I

    invoke-direct {p0, v2, v3, v4}, Lcom/oppo/widget/OppoTouchSearchView;->onKeyChanged(Ljava/lang/CharSequence;II)V

    .line 763
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    .line 767
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchSearchActionListener:Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;

    if-eqz v2, :cond_0

    .line 769
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchSearchActionListener:Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;

    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    invoke-interface {v2, v3}, Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;->onKey(Ljava/lang/CharSequence;)V

    .line 772
    :cond_0
    return-void

    .line 750
    .end local v0           #key:Lcom/oppo/widget/OppoTouchSearchView$Key;
    .end local v1           #willDisplay:Ljava/lang/CharSequence;
    :cond_1
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUnionKeys:[Lcom/oppo/widget/OppoTouchSearchView$UnionKey;

    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUnionKeys:[Lcom/oppo/widget/OppoTouchSearchView$UnionKey;

    invoke-direct {p0, p1, p2, v3}, Lcom/oppo/widget/OppoTouchSearchView;->getKeyIndices(II[Lcom/oppo/widget/OppoTouchSearchView$Key;)I

    move-result v3

    aget-object v0, v2, v3

    .restart local v0       #key:Lcom/oppo/widget/OppoTouchSearchView$Key;
    goto :goto_0
.end method

.method private loadKeys()V
    .locals 6

    .prologue
    .line 299
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .local v2, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/oppo/widget/OppoTouchSearchView$Key;>;"
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    array-length v3, v4

    .line 302
    .local v3, keysCount:I
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v4, v4

    if-eq v3, v4, :cond_0

    .line 304
    const-string v4, "OppoSpeedSearchView"

    const-string v5, "loadKeys --- error when loadKeys , keysCount > mKeyDrawables.length , return "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :goto_0
    return-void

    .line 308
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_1

    .line 314
    new-instance v1, Lcom/oppo/widget/OppoTouchSearchView$Key;

    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v0

    invoke-direct {v1, v4, v5}, Lcom/oppo/widget/OppoTouchSearchView$Key;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 315
    .local v1, key:Lcom/oppo/widget/OppoTouchSearchView$Key;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 318
    .end local v1           #key:Lcom/oppo/widget/OppoTouchSearchView$Key;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/oppo/widget/OppoTouchSearchView$Key;

    iput-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    goto :goto_0
.end method

.method private loadUnionKeys()V
    .locals 11

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 395
    .local v5, resources:Landroid/content/res/Resources;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .local v4, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/oppo/widget/OppoTouchSearchView$UnionKey;>;"
    iget-object v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableNames:[Ljava/lang/String;

    array-length v0, v7

    .line 397
    .local v0, drawableNamesCount:I
    iget-object v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->UNIONKEYS:[Ljava/lang/String;

    array-length v6, v7

    .line 402
    .local v6, unionkeysCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v6, :cond_2

    .line 404
    new-instance v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;

    iget-object v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->UNIONKEYS:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-direct {v3, v7}, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;-><init>(Ljava/lang/CharSequence;)V

    .line 405
    .local v3, key:Lcom/oppo/widget/OppoTouchSearchView$UnionKey;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    iget-object v7, v3, Lcom/oppo/widget/OppoTouchSearchView$Key;->mKeyLabel:Ljava/lang/CharSequence;

    iget-object v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDot:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 412
    iget-object v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableNames:[Ljava/lang/String;

    const/4 v8, 0x1

    add-int/lit8 v9, v0, -0x1

    iget-object v10, v3, Lcom/oppo/widget/OppoTouchSearchView$Key;->mKeyLabel:Ljava/lang/CharSequence;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lcom/oppo/widget/OppoTouchSearchView;->getCharPositionInArray([Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    .line 413
    .local v1, drawablePos:I
    if-gez v1, :cond_0

    .line 415
    iget-object v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableNames:[Ljava/lang/String;

    iget-object v8, v3, Lcom/oppo/widget/OppoTouchSearchView$Key;->mKeyLabel:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/oppo/widget/OppoTouchSearchView;->getCharPositionInArray([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 416
    if-gez v1, :cond_0

    .line 402
    .end local v1           #drawablePos:I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 421
    .restart local v1       #drawablePos:I
    :cond_0
    iget-object v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v7, v7, v1

    invoke-virtual {v3, v7}, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->setKeyDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 425
    .end local v1           #drawablePos:I
    :cond_1
    const v7, 0x1080911

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->setKeyDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 426
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 429
    :pswitch_1
    const-string v7, "B"

    iput-object v7, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyOne:Ljava/lang/CharSequence;

    .line 430
    const-string v7, "C"

    iput-object v7, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyTwo:Ljava/lang/CharSequence;

    goto :goto_1

    .line 433
    :pswitch_2
    const-string v7, "E"

    iput-object v7, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyOne:Ljava/lang/CharSequence;

    .line 434
    const-string v7, "F"

    iput-object v7, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyTwo:Ljava/lang/CharSequence;

    goto :goto_1

    .line 437
    :pswitch_3
    const-string v7, "H"

    iput-object v7, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyOne:Ljava/lang/CharSequence;

    goto :goto_1

    .line 440
    :pswitch_4
    const-string v7, "J"

    iput-object v7, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyOne:Ljava/lang/CharSequence;

    .line 441
    const-string v7, "K"

    iput-object v7, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyTwo:Ljava/lang/CharSequence;

    goto :goto_1

    .line 444
    :pswitch_5
    const-string v7, "M"

    iput-object v7, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyOne:Ljava/lang/CharSequence;

    .line 445
    const-string v7, "N"

    iput-object v7, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyTwo:Ljava/lang/CharSequence;

    goto :goto_1

    .line 448
    :pswitch_6
    const-string v7, "P"

    iput-object v7, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyOne:Ljava/lang/CharSequence;

    .line 449
    const-string v7, "Q"

    iput-object v7, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyTwo:Ljava/lang/CharSequence;

    goto :goto_1

    .line 452
    :pswitch_7
    const-string v7, "S"

    iput-object v7, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyOne:Ljava/lang/CharSequence;

    goto :goto_1

    .line 455
    :pswitch_8
    const-string v7, "U"

    iput-object v7, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyOne:Ljava/lang/CharSequence;

    .line 456
    const-string v7, "V"

    iput-object v7, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyTwo:Ljava/lang/CharSequence;

    goto :goto_1

    .line 459
    :pswitch_9
    const-string v7, "X"

    iput-object v7, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyOne:Ljava/lang/CharSequence;

    .line 460
    const-string v7, "Y"

    iput-object v7, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyTwo:Ljava/lang/CharSequence;

    goto :goto_1

    .line 466
    .end local v3           #key:Lcom/oppo/widget/OppoTouchSearchView$UnionKey;
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Lcom/oppo/widget/OppoTouchSearchView$UnionKey;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/oppo/widget/OppoTouchSearchView$UnionKey;

    iput-object v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUnionKeys:[Lcom/oppo/widget/OppoTouchSearchView$UnionKey;

    .line 467
    return-void

    .line 426
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method private onKeyChanged(Ljava/lang/CharSequence;II)V
    .locals 9
    .parameter "display"
    .parameter "key_x"
    .parameter "key_y"

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 800
    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez v5, :cond_0

    .line 882
    :goto_0
    return-void

    .line 833
    :cond_0
    const/4 v4, 0x0

    .line 834
    .local v4, resName:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 836
    .local v1, extra:Ljava/lang/String;
    const-string v5, "#"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 837
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_popup"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 842
    :goto_1
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupDrawablesMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 845
    const/4 v5, 0x2

    new-array v0, v5, [I

    .line 846
    .local v0, coordinate:[I
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoTouchSearchView;->getLocationInWindow([I)V

    .line 858
    aget v5, v0, v8

    add-int/2addr v5, p2

    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    sub-int v2, v5, v6

    .line 860
    .local v2, localx:I
    const/4 v5, 0x1

    aget v5, v0, v5

    add-int/2addr v5, p3

    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    shr-int/lit8 v6, v6, 0x1

    sub-int v3, v5, v6

    .line 862
    .local v3, localy:I
    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowMinTop:I

    if-ge v3, v5, :cond_1

    .line 864
    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowMinTop:I

    .line 873
    :cond_1
    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 875
    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v2, v3, v7, v7}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 839
    .end local v0           #coordinate:[I
    .end local v2           #localx:I
    .end local v3           #localy:I
    :cond_2
    const-string v4, "touchsearch_well_popup"

    goto :goto_1

    .line 879
    .restart local v0       #coordinate:[I
    .restart local v2       #localx:I
    .restart local v3       #localy:I
    :cond_3
    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, p0, v8, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "ev"

    .prologue
    .line 776
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 778
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 784
    .local v1, pointerId:I
    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 789
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 790
    .local v0, newPointerIndex:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mActivePointerId:I

    .line 796
    .end local v0           #newPointerIndex:I
    :cond_0
    return-void

    .line 789
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private update()V
    .locals 14

    .prologue
    .line 507
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->whetherUnion()V

    .line 510
    iget-boolean v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    if-nez v0, :cond_1

    .line 512
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    if-nez v0, :cond_0

    .line 514
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->loadKeys()V

    .line 516
    :cond_0
    iget-object v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    .line 527
    .local v9, keys:[Lcom/oppo/widget/OppoTouchSearchView$Key;
    :goto_0
    iget v13, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPaddingTop:I

    .line 528
    .local v13, topPadding:I
    array-length v10, v9

    .line 529
    .local v10, keysCount:I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->getHeight()I

    move-result v0

    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPaddingTop:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPaddingBottom:I

    sub-int v7, v0, v3

    .line 534
    .local v7, exactHeight:I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellWidth:I

    .line 535
    div-int v0, v7, v10

    iput v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    .line 537
    rem-int v12, v7, v10

    .line 538
    .local v12, residual:I
    shr-int/lit8 v0, v12, 0x1

    add-int/2addr v13, v0

    .line 547
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingY:I

    .line 553
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 555
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 561
    .local v11, r:Landroid/graphics/Rect;
    iget v0, v11, Landroid/graphics/Rect;->left:I

    iget v3, v11, Landroid/graphics/Rect;->right:I

    iget v4, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    iput v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingX:I

    .line 571
    .end local v11           #r:Landroid/graphics/Rect;
    :goto_1
    const/4 v1, 0x0

    .line 572
    .local v1, x:I
    move v2, v13

    .line 573
    .local v2, y:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    if-ge v8, v10, :cond_4

    .line 575
    aget-object v0, v9, v8

    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingX:I

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingY:I

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    invoke-virtual/range {v0 .. v6}, Lcom/oppo/widget/OppoTouchSearchView$Key;->updateKeyValue(IIIIII)V

    .line 576
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    add-int/2addr v2, v0

    .line 573
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 520
    .end local v1           #x:I
    .end local v2           #y:I
    .end local v7           #exactHeight:I
    .end local v8           #i:I
    .end local v9           #keys:[Lcom/oppo/widget/OppoTouchSearchView$Key;
    .end local v10           #keysCount:I
    .end local v12           #residual:I
    .end local v13           #topPadding:I
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUnionKeys:[Lcom/oppo/widget/OppoTouchSearchView$UnionKey;

    if-nez v0, :cond_2

    .line 522
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->loadUnionKeys()V

    .line 524
    :cond_2
    iget-object v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUnionKeys:[Lcom/oppo/widget/OppoTouchSearchView$UnionKey;

    .restart local v9       #keys:[Lcom/oppo/widget/OppoTouchSearchView$Key;
    goto :goto_0

    .line 565
    .restart local v7       #exactHeight:I
    .restart local v10       #keysCount:I
    .restart local v12       #residual:I
    .restart local v13       #topPadding:I
    :cond_3
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellWidth:I

    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    sub-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingX:I

    goto :goto_1

    .line 578
    .restart local v1       #x:I
    .restart local v2       #y:I
    .restart local v8       #i:I
    :cond_4
    return-void
.end method

.method private updateBackGroundBound()V
    .locals 7

    .prologue
    .line 611
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 613
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 616
    .local v0, bgwidth:I
    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundAlignMode:I

    if-nez v3, :cond_1

    .line 618
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    div-int/lit8 v1, v3, 0x2

    .line 619
    .local v1, exactleft:I
    add-int v2, v1, v0

    .line 631
    .local v2, exactright:I
    :goto_0
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBottom:I

    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTop:I

    sub-int/2addr v5, v6

    invoke-virtual {v3, v1, v4, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 633
    .end local v0           #bgwidth:I
    .end local v1           #exactleft:I
    .end local v2           #exactright:I
    :cond_0
    return-void

    .line 621
    .restart local v0       #bgwidth:I
    :cond_1
    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundAlignMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 623
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundRightMargin:I

    sub-int v2, v3, v4

    .line 624
    .restart local v2       #exactright:I
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int v1, v2, v3

    .restart local v1       #exactleft:I
    goto :goto_0

    .line 628
    .end local v1           #exactleft:I
    .end local v2           #exactright:I
    :cond_2
    iget v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundLeftMargin:I

    .line 629
    .restart local v1       #exactleft:I
    add-int v2, v1, v0

    .restart local v2       #exactright:I
    goto :goto_0
.end method

.method private whetherUnion()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 471
    iget-boolean v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUnionEnable:Z

    if-nez v1, :cond_0

    .line 473
    iput-boolean v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    .line 503
    :goto_0
    return-void

    .line 477
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPaddingTop:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPaddingBottom:I

    sub-int v0, v1, v2

    .line 483
    .local v0, exactHeight:I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellWidth:I

    .line 484
    iget-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    array-length v1, v1

    div-int v1, v0, v1

    iput v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    .line 491
    iget v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    iget v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    if-ge v1, v2, :cond_1

    .line 493
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    goto :goto_0

    .line 497
    :cond_1
    iput-boolean v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    goto :goto_0
.end method


# virtual methods
.method public closing()V
    .locals 1

    .prologue
    .line 920
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 924
    :cond_0
    return-void
.end method

.method findCell(IIII[Lcom/oppo/widget/OppoTouchSearchView$Key;)I
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "start"
    .parameter "end"
    .parameter "mkeys"

    .prologue
    .line 637
    if-le p3, p4, :cond_1

    .line 639
    const/4 v2, -0x1

    .line 657
    :cond_0
    :goto_0
    return v2

    .line 641
    :cond_1
    add-int v4, p3, p4

    div-int/lit8 v2, v4, 0x2

    .line 642
    .local v2, middle:I
    move-object v1, p5

    .line 643
    .local v1, keys:[Lcom/oppo/widget/OppoTouchSearchView$Key;
    aget-object v4, v1, v2

    iget v3, v4, Lcom/oppo/widget/OppoTouchSearchView$Key;->y:I

    .line 644
    .local v3, top:I
    aget-object v4, v1, v2

    iget v4, v4, Lcom/oppo/widget/OppoTouchSearchView$Key;->y:I

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    add-int v0, v4, v5

    .line 645
    .local v0, bottom:I
    if-lt p2, v3, :cond_2

    if-lt p2, v0, :cond_0

    .line 649
    :cond_2
    if-ge p2, v3, :cond_3

    .line 651
    add-int/lit8 p4, v2, -0x1

    .line 652
    invoke-virtual/range {p0 .. p5}, Lcom/oppo/widget/OppoTouchSearchView;->findCell(IIII[Lcom/oppo/widget/OppoTouchSearchView$Key;)I

    move-result v2

    goto :goto_0

    .line 656
    :cond_3
    add-int/lit8 p3, v2, 0x1

    .line 657
    invoke-virtual/range {p0 .. p5}, Lcom/oppo/widget/OppoTouchSearchView;->findCell(IIII[Lcom/oppo/widget/OppoTouchSearchView$Key;)I

    move-result v2

    goto :goto_0
.end method

.method public getTouchSearchActionListener()Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchSearchActionListener:Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 288
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 289
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 293
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 294
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->closing()V

    .line 295
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 886
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 887
    iget-boolean v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchFlag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 892
    :cond_0
    iget-boolean v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    if-nez v0, :cond_1

    .line 894
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoTouchSearchView;->drawKeys(Landroid/graphics/Canvas;[Lcom/oppo/widget/OppoTouchSearchView$Key;)V

    .line 900
    :goto_0
    return-void

    .line 898
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUnionKeys:[Lcom/oppo/widget/OppoTouchSearchView$UnionKey;

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoTouchSearchView;->drawKeys(Landroid/graphics/Canvas;[Lcom/oppo/widget/OppoTouchSearchView$Key;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v1, 0x0

    .line 592
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 593
    iget-boolean v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFirstLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFrameChanged:Z

    if-eqz v0, :cond_2

    .line 595
    :cond_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->updateBackGroundBound()V

    .line 596
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->update()V

    .line 598
    iget-boolean v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFirstLayout:Z

    if-eqz v0, :cond_1

    .line 600
    iput-boolean v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFirstLayout:Z

    .line 602
    :cond_1
    iget-boolean v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFrameChanged:Z

    if-eqz v0, :cond_2

    .line 604
    iput-boolean v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFrameChanged:Z

    .line 607
    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "me"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 689
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 694
    .local v0, action:I
    and-int/lit16 v4, v0, 0xff

    packed-switch v4, :pswitch_data_0

    .line 737
    :goto_0
    :pswitch_0
    return v6

    .line 697
    :pswitch_1
    iput-boolean v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchFlag:Z

    .line 698
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mActivePointerId:I

    .line 699
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->invalidate()V

    goto :goto_0

    .line 710
    :pswitch_2
    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 715
    .local v1, pointerIndex:I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v2, v4

    .line 716
    .local v2, x:I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v3, v4

    .line 717
    .local v3, y:I
    invoke-direct {p0, v2, v3}, Lcom/oppo/widget/OppoTouchSearchView;->invalidateKey(II)V

    goto :goto_0

    .line 722
    .end local v1           #pointerIndex:I
    .end local v2           #x:I
    .end local v3           #y:I
    :pswitch_3
    const/4 v4, -0x1

    iput v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mActivePointerId:I

    .line 723
    iput-boolean v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchFlag:Z

    .line 724
    const-string v4, ""

    iput-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    .line 725
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->closing()V

    .line 726
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->invalidate()V

    .line 727
    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoTouchSearchView;->playSoundEffect(I)V

    goto :goto_0

    .line 730
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoTouchSearchView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 694
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 928
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 929
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 279
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mLeft:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mRight:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTop:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBottom:I

    if-eq v0, p4, :cond_1

    .line 281
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFrameChanged:Z

    .line 283
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method public setPopupWindowSize(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 952
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    if-eq v0, p2, :cond_1

    .line 955
    :cond_0
    iput p1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    .line 956
    iput p2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    .line 957
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 958
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 959
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->invalidate()V

    .line 961
    :cond_1
    return-void
.end method

.method public setPopupWindowTextColor(I)V
    .locals 2
    .parameter "textColor"

    .prologue
    .line 983
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextColor:I

    if-eq v0, p1, :cond_0

    .line 985
    iput p1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextColor:I

    .line 986
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 987
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->invalidate()V

    .line 989
    :cond_0
    return-void
.end method

.method public setPopupWindowTextSize(I)V
    .locals 2
    .parameter "textSize"

    .prologue
    .line 973
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextSize:I

    if-eq v0, p1, :cond_0

    .line 975
    iput p1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextSize:I

    .line 976
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 977
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->invalidate()V

    .line 979
    :cond_0
    return-void
.end method

.method public setPopupWindowTopMinCoordinate(I)V
    .locals 1
    .parameter "top"

    .prologue
    .line 965
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowMinTop:I

    if-eq v0, p1, :cond_0

    .line 967
    iput p1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowMinTop:I

    .line 969
    :cond_0
    return-void
.end method

.method public setTouchBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 933
    iput-object p1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 934
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->updateBackGroundBound()V

    .line 935
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->update()V

    .line 936
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->invalidate()V

    .line 937
    return-void
.end method

.method public setTouchSearchActionListener(Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 582
    iput-object p1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchSearchActionListener:Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;

    .line 583
    return-void
.end method

.method public setUnionEnable(Z)V
    .locals 1
    .parameter "unionEnable"

    .prologue
    .line 941
    iget-boolean v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUnionEnable:Z

    if-eq v0, p1, :cond_0

    .line 943
    iput-boolean p1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUnionEnable:Z

    .line 944
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->updateBackGroundBound()V

    .line 945
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->update()V

    .line 946
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->invalidate()V

    .line 948
    :cond_0
    return-void
.end method
