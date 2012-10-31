.class final Landroid/view/IndicateMenuView;
.super Ljava/lang/Object;
.source "IndicateMenuView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IndicateMenuView$1;,
        Landroid/view/IndicateMenuView$DrawableRecyleBin;,
        Landroid/view/IndicateMenuView$DRAWABLE_TYPE;,
        Landroid/view/IndicateMenuView$ItemRecycleBin;,
        Landroid/view/IndicateMenuView$MenuItemView;,
        Landroid/view/IndicateMenuView$INDICATOR_STATE;,
        Landroid/view/IndicateMenuView$MenuView;
    }
.end annotation


# static fields
.field private static final DEFAULT_ANIMATION_STYLE:I = 0x1030002

.field private static INDICATEOR_DRAWABLE_ABOVE:Landroid/graphics/drawable/Drawable;

.field private static INDICATEOR_DRAWABLE_ABOVE_HEIGHT:I

.field private static INDICATEOR_DRAWABLE_BELOW:Landroid/graphics/drawable/Drawable;

.field private static INDICATEOR_DRAWABLE_BELOW_HEIGHT:I

.field private static STATE_NORMAL:[I

.field private static STATE_NORMAL_PRESS:[I

.field private static STATE_PRESS:[I


# instance fields
.field private mHasVisibleItem:Z

.field private mMenu:Landroid/view/IndicateMenuImpl;

.field private mRecycler:Landroid/view/IndicateMenuView$ItemRecycleBin;

.field private mView:Landroid/view/IndicateMenuView$MenuView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 852
    new-array v0, v3, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Landroid/view/IndicateMenuView;->STATE_PRESS:[I

    .line 853
    new-array v0, v3, [I

    const v1, 0x101009e

    aput v1, v0, v2

    sput-object v0, Landroid/view/IndicateMenuView;->STATE_NORMAL:[I

    .line 854
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/view/IndicateMenuView;->STATE_NORMAL_PRESS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method constructor <init>(Landroid/view/IndicateMenuImpl;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/view/IndicateMenuView$ItemRecycleBin;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/IndicateMenuView$ItemRecycleBin;-><init>(Landroid/view/IndicateMenuView;Landroid/view/IndicateMenuView$1;)V

    iput-object v0, p0, Landroid/view/IndicateMenuView;->mRecycler:Landroid/view/IndicateMenuView$ItemRecycleBin;

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/IndicateMenuView;->mHasVisibleItem:Z

    .line 50
    invoke-virtual {p1}, Landroid/view/IndicateMenuImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/IndicateMenuView;->initializeResource(Landroid/content/Context;)V

    .line 52
    iput-object p1, p0, Landroid/view/IndicateMenuView;->mMenu:Landroid/view/IndicateMenuImpl;

    .line 53
    new-instance v0, Landroid/view/IndicateMenuView$MenuView;

    invoke-virtual {p1}, Landroid/view/IndicateMenuImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/view/IndicateMenuView$MenuView;-><init>(Landroid/view/IndicateMenuView;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/view/IndicateMenuView;->mView:Landroid/view/IndicateMenuView$MenuView;

    .line 54
    const v0, 0x1030002

    invoke-virtual {p0, v0}, Landroid/view/IndicateMenuView;->setAnimationStyle(I)V

    .line 55
    return-void
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    .line 35
    sget v0, Landroid/view/IndicateMenuView;->INDICATEOR_DRAWABLE_BELOW_HEIGHT:I

    return v0
.end method

.method static synthetic access$1100(Landroid/view/IndicateMenuView;[I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/view/IndicateMenuView;->getBaseWindowLocation([I)V

    return-void
.end method

.method static synthetic access$1200(Landroid/view/IndicateMenuView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/view/IndicateMenuView;->getBaseWindowTop()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/view/IndicateMenuView;)Landroid/view/IndicateMenuView$ItemRecycleBin;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Landroid/view/IndicateMenuView;->mRecycler:Landroid/view/IndicateMenuView$ItemRecycleBin;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/view/IndicateMenuView;)Landroid/view/IndicateMenuView$MenuView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Landroid/view/IndicateMenuView;->mView:Landroid/view/IndicateMenuView$MenuView;

    return-object v0
.end method

.method static synthetic access$1600()[I
    .locals 1

    .prologue
    .line 35
    sget-object v0, Landroid/view/IndicateMenuView;->STATE_NORMAL_PRESS:[I

    return-object v0
.end method

.method static synthetic access$300()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Landroid/view/IndicateMenuView;->INDICATEOR_DRAWABLE_ABOVE:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$400()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Landroid/view/IndicateMenuView;->INDICATEOR_DRAWABLE_BELOW:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$500()[I
    .locals 1

    .prologue
    .line 35
    sget-object v0, Landroid/view/IndicateMenuView;->STATE_NORMAL:[I

    return-object v0
.end method

.method static synthetic access$600()[I
    .locals 1

    .prologue
    .line 35
    sget-object v0, Landroid/view/IndicateMenuView;->STATE_PRESS:[I

    return-object v0
.end method

.method static synthetic access$700(Landroid/view/IndicateMenuView;)Landroid/view/IndicateMenuImpl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Landroid/view/IndicateMenuView;->mMenu:Landroid/view/IndicateMenuImpl;

    return-object v0
.end method

.method static synthetic access$800(Landroid/view/IndicateMenuView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Landroid/view/IndicateMenuView;->mHasVisibleItem:Z

    return v0
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 35
    sget v0, Landroid/view/IndicateMenuView;->INDICATEOR_DRAWABLE_ABOVE_HEIGHT:I

    return v0
.end method

.method private getBaseWindowLeft()I
    .locals 3

    .prologue
    .line 153
    const/4 v1, 0x0

    .line 154
    .local v1, left:I
    iget-object v2, p0, Landroid/view/IndicateMenuView;->mMenu:Landroid/view/IndicateMenuImpl;

    if-eqz v2, :cond_0

    .line 155
    iget-object v2, p0, Landroid/view/IndicateMenuView;->mMenu:Landroid/view/IndicateMenuImpl;

    invoke-virtual {v2}, Landroid/view/IndicateMenuImpl;->getBaseView()Landroid/view/View;

    move-result-object v0

    .line 156
    .local v0, baseView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Landroid/view/View;->getWindowAbsoluteLeft()I

    move-result v1

    .line 160
    .end local v0           #baseView:Landroid/view/View;
    :cond_0
    return v1
.end method

.method private getBaseWindowLocation([I)V
    .locals 3
    .parameter "coors"

    .prologue
    .line 140
    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v1, p0, Landroid/view/IndicateMenuView;->mMenu:Landroid/view/IndicateMenuImpl;

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Landroid/view/IndicateMenuView;->mMenu:Landroid/view/IndicateMenuImpl;

    invoke-virtual {v1}, Landroid/view/IndicateMenuImpl;->getBaseView()Landroid/view/View;

    move-result-object v0

    .line 145
    .local v0, baseView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 146
    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/view/View;->getWindowAbsoluteLeft()I

    move-result v2

    aput v2, p1, v1

    .line 147
    const/4 v1, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getWindowAbsoluteTop()I

    move-result v2

    aput v2, p1, v1

    goto :goto_0
.end method

.method private getBaseWindowTop()I
    .locals 3

    .prologue
    .line 164
    const/4 v1, 0x0

    .line 165
    .local v1, top:I
    iget-object v2, p0, Landroid/view/IndicateMenuView;->mMenu:Landroid/view/IndicateMenuImpl;

    if-eqz v2, :cond_0

    .line 166
    iget-object v2, p0, Landroid/view/IndicateMenuView;->mMenu:Landroid/view/IndicateMenuImpl;

    invoke-virtual {v2}, Landroid/view/IndicateMenuImpl;->getBaseView()Landroid/view/View;

    move-result-object v0

    .line 167
    .local v0, baseView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Landroid/view/View;->getWindowAbsoluteTop()I

    move-result v1

    .line 171
    .end local v0           #baseView:Landroid/view/View;
    :cond_0
    return v1
.end method

.method private initializeResource(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 58
    sget-object v0, Landroid/view/IndicateMenuView;->INDICATEOR_DRAWABLE_ABOVE:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10804c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Landroid/view/IndicateMenuView;->INDICATEOR_DRAWABLE_ABOVE:Landroid/graphics/drawable/Drawable;

    .line 61
    sget-object v0, Landroid/view/IndicateMenuView;->INDICATEOR_DRAWABLE_ABOVE:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Landroid/view/IndicateMenuView;->setDrawablePressMode(Landroid/graphics/drawable/Drawable;)V

    .line 63
    sget-object v0, Landroid/view/IndicateMenuView;->INDICATEOR_DRAWABLE_ABOVE:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sput v0, Landroid/view/IndicateMenuView;->INDICATEOR_DRAWABLE_ABOVE_HEIGHT:I

    .line 67
    :cond_0
    sget-object v0, Landroid/view/IndicateMenuView;->INDICATEOR_DRAWABLE_BELOW:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10804c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Landroid/view/IndicateMenuView;->INDICATEOR_DRAWABLE_BELOW:Landroid/graphics/drawable/Drawable;

    .line 70
    sget-object v0, Landroid/view/IndicateMenuView;->INDICATEOR_DRAWABLE_BELOW:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Landroid/view/IndicateMenuView;->setDrawablePressMode(Landroid/graphics/drawable/Drawable;)V

    .line 72
    sget-object v0, Landroid/view/IndicateMenuView;->INDICATEOR_DRAWABLE_BELOW:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sput v0, Landroid/view/IndicateMenuView;->INDICATEOR_DRAWABLE_BELOW_HEIGHT:I

    .line 75
    :cond_1
    return-void
.end method

.method private setDrawablePressMode(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .parameter "drawable"

    .prologue
    .line 78
    instance-of v4, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v4, :cond_0

    move-object v3, p1

    .line 79
    check-cast v3, Landroid/graphics/drawable/StateListDrawable;

    .line 80
    .local v3, stateListDrawable:Landroid/graphics/drawable/StateListDrawable;
    sget-object v4, Landroid/view/IndicateMenuView;->STATE_PRESS:[I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v1

    .line 81
    .local v1, index:I
    const/4 v4, -0x1

    if-ne v4, v1, :cond_1

    const/4 v2, 0x0

    .line 83
    .local v2, pressDrawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    if-nez v2, :cond_2

    .line 92
    .end local v1           #index:I
    .end local v2           #pressDrawable:Landroid/graphics/drawable/Drawable;
    .end local v3           #stateListDrawable:Landroid/graphics/drawable/StateListDrawable;
    :cond_0
    :goto_1
    return-void

    .line 81
    .restart local v1       #index:I
    .restart local v3       #stateListDrawable:Landroid/graphics/drawable/StateListDrawable;
    :cond_1
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 86
    .restart local v2       #pressDrawable:Landroid/graphics/drawable/Drawable;
    :cond_2
    instance-of v4, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_0

    move-object v0, v2

    .line 87
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 88
    .local v0, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    goto :goto_1
.end method


# virtual methods
.method canBeAbove(I)Z
    .locals 1
    .parameter "y"

    .prologue
    .line 132
    iget-object v0, p0, Landroid/view/IndicateMenuView;->mView:Landroid/view/IndicateMenuView$MenuView;

    invoke-virtual {v0, p1}, Landroid/view/IndicateMenuView$MenuView;->willBeAbove(I)Z

    move-result v0

    return v0
.end method

.method canBeBelow(I)Z
    .locals 1
    .parameter "y"

    .prologue
    .line 136
    iget-object v0, p0, Landroid/view/IndicateMenuView;->mView:Landroid/view/IndicateMenuView$MenuView;

    invoke-virtual {v0, p1}, Landroid/view/IndicateMenuView$MenuView;->willBeBelow(I)Z

    move-result v0

    return v0
.end method

.method dismiss()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Landroid/view/IndicateMenuView;->mView:Landroid/view/IndicateMenuView$MenuView;

    invoke-virtual {v0}, Landroid/view/IndicateMenuView$MenuView;->dismiss()V

    .line 116
    return-void
.end method

.method isShowing()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Landroid/view/IndicateMenuView;->mView:Landroid/view/IndicateMenuView$MenuView;

    invoke-virtual {v0}, Landroid/view/IndicateMenuView$MenuView;->isShowing()Z

    move-result v0

    return v0
.end method

.method refresh()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Landroid/view/IndicateMenuView;->mView:Landroid/view/IndicateMenuView$MenuView;

    invoke-virtual {v0}, Landroid/view/IndicateMenuView$MenuView;->refresh()V

    .line 120
    iget-object v0, p0, Landroid/view/IndicateMenuView;->mMenu:Landroid/view/IndicateMenuImpl;

    invoke-virtual {v0}, Landroid/view/IndicateMenuImpl;->hasVisibleItems()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/IndicateMenuView;->mHasVisibleItem:Z

    .line 121
    return-void
.end method

.method setAnimationStyle(I)V
    .locals 1
    .parameter "style"

    .prologue
    .line 95
    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    .line 96
    const p1, 0x1030002

    .line 99
    :cond_0
    iget-object v0, p0, Landroid/view/IndicateMenuView;->mView:Landroid/view/IndicateMenuView$MenuView;

    invoke-virtual {v0, p1}, Landroid/view/IndicateMenuView$MenuView;->setAnimationStyle(I)V

    .line 100
    return-void
.end method

.method setIndicatorVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 124
    iget-object v0, p0, Landroid/view/IndicateMenuView;->mView:Landroid/view/IndicateMenuView$MenuView;

    invoke-virtual {v0, p1}, Landroid/view/IndicateMenuView$MenuView;->setTriangleVisible(Z)V

    .line 125
    return-void
.end method

.method show()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Landroid/view/IndicateMenuView;->mView:Landroid/view/IndicateMenuView$MenuView;

    invoke-virtual {v0}, Landroid/view/IndicateMenuView$MenuView;->show()V

    .line 112
    return-void
.end method

.method update(Landroid/view/IndicateMenuItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 128
    iget-object v0, p0, Landroid/view/IndicateMenuView;->mView:Landroid/view/IndicateMenuView$MenuView;

    invoke-virtual {v0, p1}, Landroid/view/IndicateMenuView$MenuView;->update(Landroid/view/IndicateMenuItem;)V

    .line 129
    return-void
.end method

.method updatePosition(IILandroid/view/IndicateMenuImpl$Position;)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "position"

    .prologue
    .line 103
    iget-object v0, p0, Landroid/view/IndicateMenuView;->mView:Landroid/view/IndicateMenuView$MenuView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/IndicateMenuView$MenuView;->updatePosition(IILandroid/view/IndicateMenuImpl$Position;)V

    .line 104
    return-void
.end method
