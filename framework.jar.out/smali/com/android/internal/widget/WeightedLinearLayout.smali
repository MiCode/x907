.class public Lcom/android/internal/widget/WeightedLinearLayout;
.super Landroid/widget/LinearLayout;
.source "WeightedLinearLayout.java"


# instance fields
.field private OppoStyle:Z

.field private mContext:Landroid/content/Context;

.field private mMajorWeightMax:F

.field private mMajorWeightMin:F

.field private mMinorWeightMax:F

.field private mMinorWeightMin:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput-object v5, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mContext:Landroid/content/Context;

    .line 49
    iput-object p1, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mContext:Landroid/content/Context;

    .line 52
    sget-object v2, Lcom/android/internal/R$styleable;->WeightedLinearLayout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 54
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMajorWeightMin:F

    .line 55
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMinorWeightMin:F

    .line 56
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMajorWeightMax:F

    .line 57
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMinorWeightMax:F

    .line 58
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    sget-object v2, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v3, 0x101005d

    invoke-virtual {p1, v5, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 63
    .local v1, b:Landroid/content/res/TypedArray;
    const/16 v2, 0x11

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/widget/WeightedLinearLayout;->OppoStyle:Z

    .line 64
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 14
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/internal/widget/WeightedLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 71
    .local v4, metrics:Landroid/util/DisplayMetrics;
    iget v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 72
    .local v5, screenWidth:I
    iget v12, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v5, v12, :cond_3

    const/4 v1, 0x1

    .line 74
    .local v1, isPortrait:Z
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 76
    .local v9, widthMode:I
    invoke-super/range {p0 .. p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 78
    invoke-virtual {p0}, Lcom/android/internal/widget/WeightedLinearLayout;->getMeasuredWidth()I

    move-result v8

    .line 80
    .local v8, width:I
    invoke-virtual {p0}, Lcom/android/internal/widget/WeightedLinearLayout;->getMeasuredHeight()I

    move-result v0

    .line 82
    .local v0, height:I
    const/4 v3, 0x0

    .line 84
    .local v3, measure:Z
    const/high16 v12, 0x4000

    invoke-static {v8, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 86
    const/high16 v12, 0x4000

    invoke-static {v0, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 89
    iget-boolean v12, p0, Lcom/android/internal/widget/WeightedLinearLayout;->OppoStyle:Z

    if-eqz v12, :cond_0

    .line 91
    iget-object v12, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x105000e

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 93
    .local v2, maxHeight:I
    if-le v0, v2, :cond_0

    .line 95
    move v0, v2

    .line 96
    const/high16 v12, 0x4000

    invoke-static {v0, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 97
    invoke-super/range {p0 .. p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 102
    .end local v2           #maxHeight:I
    :cond_0
    if-eqz v1, :cond_4

    iget v11, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMinorWeightMin:F

    .line 103
    .local v11, widthWeightMin:F
    :goto_1
    if-eqz v1, :cond_5

    iget v10, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMinorWeightMax:F

    .line 104
    .local v10, widthWeightMax:F
    :goto_2
    const/high16 v12, -0x8000

    if-ne v9, v12, :cond_1

    .line 105
    int-to-float v12, v5

    mul-float/2addr v12, v11

    float-to-int v7, v12

    .line 106
    .local v7, weightedMin:I
    int-to-float v12, v5

    mul-float/2addr v12, v11

    float-to-int v6, v12

    .line 107
    .local v6, weightedMax:I
    const/4 v12, 0x0

    cmpl-float v12, v11, v12

    if-lez v12, :cond_6

    if-ge v8, v7, :cond_6

    .line 108
    const/high16 v12, 0x4000

    invoke-static {v7, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 109
    const/4 v3, 0x1

    .line 118
    .end local v6           #weightedMax:I
    .end local v7           #weightedMin:I
    :cond_1
    :goto_3
    if-eqz v3, :cond_2

    .line 119
    invoke-super/range {p0 .. p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 121
    :cond_2
    return-void

    .line 72
    .end local v0           #height:I
    .end local v1           #isPortrait:Z
    .end local v3           #measure:Z
    .end local v8           #width:I
    .end local v9           #widthMode:I
    .end local v10           #widthWeightMax:F
    .end local v11           #widthWeightMin:F
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 102
    .restart local v0       #height:I
    .restart local v1       #isPortrait:Z
    .restart local v3       #measure:Z
    .restart local v8       #width:I
    .restart local v9       #widthMode:I
    :cond_4
    iget v11, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMajorWeightMin:F

    goto :goto_1

    .line 103
    .restart local v11       #widthWeightMin:F
    :cond_5
    iget v10, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMajorWeightMax:F

    goto :goto_2

    .line 110
    .restart local v6       #weightedMax:I
    .restart local v7       #weightedMin:I
    .restart local v10       #widthWeightMax:F
    :cond_6
    const/4 v12, 0x0

    cmpl-float v12, v10, v12

    if-lez v12, :cond_1

    if-le v8, v6, :cond_1

    .line 111
    const/high16 v12, 0x4000

    invoke-static {v6, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 112
    const/4 v3, 0x1

    goto :goto_3
.end method
