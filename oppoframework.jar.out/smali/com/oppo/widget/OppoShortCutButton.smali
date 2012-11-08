.class public Lcom/oppo/widget/OppoShortCutButton;
.super Landroid/widget/LinearLayout;
.source "OppoShortCutButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoShortCutButton$OnShortCutButtonListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OppoShortCutButton"


# instance fields
.field private final MINCHILDCOUNT:I

.field private final MIXCHILDCOUNT:I

.field private final NONECHILD:I

.field private final ONECHILD:I

.field private final THREECHILD:I

.field private final TWOECHILD:I

.field private background:Landroid/graphics/drawable/Drawable;

.field private buttonColor:I

.field private buttonShadowColor:I

.field private buttonShadowR:F

.field private buttonShadowX:F

.field private buttonShadowY:F

.field private buttonSize:I

.field private button_background:Landroid/graphics/drawable/Drawable;

.field private final debug:Z

.field private mButtonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeText:Ljava/lang/String;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralText:Ljava/lang/String;

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveText:Ljava/lang/String;

.field private mChildCount:I

.field private mHideImeAction:Ljava/lang/String;

.field private mImeStateReceiverRegistered:Z

.field private final mInputMethodStateReceiver:Landroid/content/BroadcastReceiver;

.field private mIsButtonNegativeAble:Z

.field private mIsButtonNeutralAble:Z

.field private mIsButtonPositiveAble:Z

.field private mIsShow:Z

.field private mOnShortCutButtonListener:Lcom/oppo/widget/OppoShortCutButton$OnShortCutButtonListener;

.field private mOppoButtonEnterAniSet:Landroid/view/animation/AnimationSet;

.field private mOppoButtonExitAniSet:Landroid/view/animation/AnimationSet;

.field private mReceiverEnabled:Z

.field private mShowImeAction:Ljava/lang/String;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoShortCutButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    invoke-direct {p0}, Lcom/oppo/widget/OppoShortCutButton;->prepareTabLayoutAnim()V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x3

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 99
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput-boolean v8, p0, Lcom/oppo/widget/OppoShortCutButton;->debug:Z

    .line 39
    const-string v5, "com.oppo.android.INPUT_WINDOW_SHOWN"

    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mShowImeAction:Ljava/lang/String;

    .line 40
    const-string v5, "com.oppo.android.INPUT_WINDOW_HIDDED"

    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mHideImeAction:Ljava/lang/String;

    .line 42
    iput-boolean v9, p0, Lcom/oppo/widget/OppoShortCutButton;->mImeStateReceiverRegistered:Z

    .line 44
    iput v10, p0, Lcom/oppo/widget/OppoShortCutButton;->MIXCHILDCOUNT:I

    .line 45
    iput v8, p0, Lcom/oppo/widget/OppoShortCutButton;->MINCHILDCOUNT:I

    .line 47
    iput v9, p0, Lcom/oppo/widget/OppoShortCutButton;->mChildCount:I

    .line 48
    iput-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->background:Landroid/graphics/drawable/Drawable;

    .line 49
    iput-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->button_background:Landroid/graphics/drawable/Drawable;

    .line 51
    iput-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositiveText:Ljava/lang/String;

    .line 52
    iput-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegativeText:Ljava/lang/String;

    .line 53
    iput-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutralText:Ljava/lang/String;

    .line 55
    iput-boolean v8, p0, Lcom/oppo/widget/OppoShortCutButton;->mIsButtonPositiveAble:Z

    .line 56
    iput-boolean v8, p0, Lcom/oppo/widget/OppoShortCutButton;->mIsButtonNegativeAble:Z

    .line 57
    iput-boolean v8, p0, Lcom/oppo/widget/OppoShortCutButton;->mIsButtonNeutralAble:Z

    .line 59
    iput-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    .line 60
    iput-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    .line 61
    iput-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutral:Landroid/widget/Button;

    .line 66
    const/4 v5, 0x0

    iput v5, p0, Lcom/oppo/widget/OppoShortCutButton;->buttonShadowX:F

    .line 67
    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/oppo/widget/OppoShortCutButton;->buttonShadowY:F

    .line 68
    const v5, 0x3dcccccd

    iput v5, p0, Lcom/oppo/widget/OppoShortCutButton;->buttonShadowR:F

    .line 69
    iput-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonList:Ljava/util/ArrayList;

    .line 72
    iput-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mOppoButtonEnterAniSet:Landroid/view/animation/AnimationSet;

    .line 73
    iput-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mOppoButtonExitAniSet:Landroid/view/animation/AnimationSet;

    .line 75
    iput v9, p0, Lcom/oppo/widget/OppoShortCutButton;->NONECHILD:I

    .line 76
    iput v8, p0, Lcom/oppo/widget/OppoShortCutButton;->ONECHILD:I

    .line 77
    iput v11, p0, Lcom/oppo/widget/OppoShortCutButton;->TWOECHILD:I

    .line 78
    iput v10, p0, Lcom/oppo/widget/OppoShortCutButton;->THREECHILD:I

    .line 80
    iput-boolean v9, p0, Lcom/oppo/widget/OppoShortCutButton;->mIsShow:Z

    .line 81
    iput-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->view:Landroid/view/View;

    .line 83
    iput-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mOnShortCutButtonListener:Lcom/oppo/widget/OppoShortCutButton$OnShortCutButtonListener;

    .line 84
    iput-boolean v8, p0, Lcom/oppo/widget/OppoShortCutButton;->mReceiverEnabled:Z

    .line 573
    new-instance v5, Lcom/oppo/widget/OppoShortCutButton$1;

    invoke-direct {v5, p0}, Lcom/oppo/widget/OppoShortCutButton$1;-><init>(Lcom/oppo/widget/OppoShortCutButton;)V

    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mInputMethodStateReceiver:Landroid/content/BroadcastReceiver;

    .line 101
    iput-object p0, p0, Lcom/oppo/widget/OppoShortCutButton;->view:Landroid/view/View;

    .line 108
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonList:Ljava/util/ArrayList;

    .line 110
    sget-object v5, Lcom/android/internal/R$styleable;->ShortCutButton:[I

    invoke-virtual {p1, p2, v5, v9, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 111
    .local v0, a:Landroid/content/res/TypedArray;
    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v4

    .line 114
    .local v4, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 116
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 117
    .local v1, attr:I
    packed-switch v1, :pswitch_data_0

    .line 114
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    :pswitch_0
    const/16 v5, 0xe

    iget v6, p0, Lcom/oppo/widget/OppoShortCutButton;->buttonShadowColor:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/oppo/widget/OppoShortCutButton;->buttonShadowColor:I

    .line 124
    const-string v5, "OppoShortCutButton"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-- buttonShadowColor == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/oppo/widget/OppoShortCutButton;->buttonShadowColor:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 131
    :pswitch_1
    const/16 v5, 0xb

    iget v6, p0, Lcom/oppo/widget/OppoShortCutButton;->buttonShadowX:F

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Lcom/oppo/widget/OppoShortCutButton;->buttonShadowX:F

    .line 134
    const-string v5, "OppoShortCutButton"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-- buttonShadowX == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/oppo/widget/OppoShortCutButton;->buttonShadowX:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 141
    :pswitch_2
    const/16 v5, 0xc

    iget v6, p0, Lcom/oppo/widget/OppoShortCutButton;->buttonShadowY:F

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Lcom/oppo/widget/OppoShortCutButton;->buttonShadowY:F

    .line 144
    const-string v5, "OppoShortCutButton"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-- buttonShadowY == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/oppo/widget/OppoShortCutButton;->buttonShadowY:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 151
    :pswitch_3
    const/16 v5, 0xd

    iget v6, p0, Lcom/oppo/widget/OppoShortCutButton;->buttonShadowR:F

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Lcom/oppo/widget/OppoShortCutButton;->buttonShadowR:F

    .line 154
    const-string v5, "OppoShortCutButton"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-- buttonShadowR == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/oppo/widget/OppoShortCutButton;->buttonShadowR:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 161
    :pswitch_4
    const/4 v5, 0x6

    iget v6, p0, Lcom/oppo/widget/OppoShortCutButton;->buttonColor:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/oppo/widget/OppoShortCutButton;->buttonColor:I

    .line 164
    const-string v5, "OppoShortCutButton"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-- buttonColor == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/oppo/widget/OppoShortCutButton;->buttonColor:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 171
    :pswitch_5
    const/4 v5, 0x5

    iget v6, p0, Lcom/oppo/widget/OppoShortCutButton;->buttonSize:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/oppo/widget/OppoShortCutButton;->buttonSize:I

    .line 174
    const-string v5, "OppoShortCutButton"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-- buttonSize == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/oppo/widget/OppoShortCutButton;->buttonSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 181
    :pswitch_6
    invoke-virtual {v0, v9, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mChildCount:I

    .line 184
    const-string v5, "OppoShortCutButton"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-- mChildCount == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/oppo/widget/OppoShortCutButton;->mChildCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 191
    :pswitch_7
    const/16 v5, 0x9

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->background:Landroid/graphics/drawable/Drawable;

    .line 194
    const-string v5, "OppoShortCutButton"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-- background == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/oppo/widget/OppoShortCutButton;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 201
    :pswitch_8
    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->button_background:Landroid/graphics/drawable/Drawable;

    .line 204
    const-string v5, "OppoShortCutButton"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-- button_background == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/oppo/widget/OppoShortCutButton;->button_background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 211
    :pswitch_9
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositiveText:Ljava/lang/String;

    .line 214
    const-string v5, "OppoShortCutButton"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-- mButtonPositiveText == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositiveText:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 221
    :pswitch_a
    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegativeText:Ljava/lang/String;

    .line 224
    const-string v5, "OppoShortCutButton"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-- mButtonNegativeText == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegativeText:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 231
    :pswitch_b
    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutralText:Ljava/lang/String;

    .line 234
    const-string v5, "OppoShortCutButton"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-- mButtonNeutralText == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutralText:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 241
    :pswitch_c
    invoke-virtual {v0, v10, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mIsButtonPositiveAble:Z

    .line 244
    const-string v5, "OppoShortCutButton"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-- mIsButtonPositiveAble == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/oppo/widget/OppoShortCutButton;->mIsButtonPositiveAble:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 251
    :pswitch_d
    const/4 v5, 0x4

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mIsButtonNegativeAble:Z

    .line 254
    const-string v5, "OppoShortCutButton"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-- mIsButtonNegativeAble == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/oppo/widget/OppoShortCutButton;->mIsButtonNegativeAble:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 261
    :pswitch_e
    const/16 v5, 0x8

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mIsButtonNeutralAble:Z

    .line 264
    const-string v5, "OppoShortCutButton"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-- mIsButtonNeutralAble == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/oppo/widget/OppoShortCutButton;->mIsButtonNeutralAble:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 271
    :pswitch_f
    const/16 v5, 0xf

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mReceiverEnabled:Z

    .line 274
    const-string v5, "OppoShortCutButton"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-- mReceiverEnabled == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/oppo/widget/OppoShortCutButton;->mReceiverEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 286
    .end local v1           #attr:I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 289
    .end local v2           #i:I
    .end local v4           #n:I
    :cond_1
    const-string v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 290
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v5, 0x10900e7

    invoke-virtual {v3, v5, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 292
    iget v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mChildCount:I

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoShortCutButton;->getCountChild(I)I

    move-result v5

    iput v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mChildCount:I

    .line 295
    const-string v5, "OppoShortCutButton"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-- OppoShortCutButton mChildCount == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/oppo/widget/OppoShortCutButton;->mChildCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const v5, 0x1020414

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoShortCutButton;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    .line 299
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositiveText:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 301
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositiveText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 303
    :cond_2
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    iget-boolean v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mIsButtonPositiveAble:Z

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 304
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setId(I)V

    .line 308
    const v5, 0x1020415

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoShortCutButton;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    .line 309
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegativeText:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 311
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegativeText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 313
    :cond_3
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    iget-boolean v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mIsButtonNegativeAble:Z

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 314
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v5, v11}, Landroid/widget/Button;->setId(I)V

    .line 318
    const v5, 0x1020416

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoShortCutButton;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutral:Landroid/widget/Button;

    .line 319
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutralText:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 321
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutralText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 323
    :cond_4
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutral:Landroid/widget/Button;

    iget-boolean v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mIsButtonNeutralAble:Z

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 324
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setId(I)V

    .line 328
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->background:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5

    .line 330
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoShortCutButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 333
    :cond_5
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->button_background:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_6

    .line 335
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->button_background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 336
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->button_background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 337
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->button_background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 348
    :cond_6
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 350
    iget v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mChildCount:I

    packed-switch v5, :pswitch_data_1

    .line 388
    :goto_2
    invoke-direct {p0}, Lcom/oppo/widget/OppoShortCutButton;->prepareTabLayoutAnim()V

    .line 389
    return-void

    .line 354
    :pswitch_10
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 355
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 361
    :pswitch_11
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 362
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 365
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 371
    :pswitch_12
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 372
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 375
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 378
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_5
        :pswitch_4
        :pswitch_b
        :pswitch_e
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_f
    .end packed-switch

    .line 350
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoShortCutButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mReceiverEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/oppo/widget/OppoShortCutButton;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mHideImeAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/widget/OppoShortCutButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mIsShow:Z

    return v0
.end method

.method static synthetic access$202(Lcom/oppo/widget/OppoShortCutButton;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/oppo/widget/OppoShortCutButton;->mIsShow:Z

    return p1
.end method

.method static synthetic access$300(Lcom/oppo/widget/OppoShortCutButton;)Landroid/view/animation/AnimationSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mOppoButtonEnterAniSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oppo/widget/OppoShortCutButton;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mShowImeAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oppo/widget/OppoShortCutButton;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oppo/widget/OppoShortCutButton;)Landroid/view/animation/AnimationSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mOppoButtonExitAniSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method private prepareTabLayoutAnim()V
    .locals 11

    .prologue
    const/high16 v8, 0x3f00

    const-wide/16 v9, 0x32

    const/high16 v6, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 639
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v3, p0, Lcom/oppo/widget/OppoShortCutButton;->mOppoButtonEnterAniSet:Landroid/view/animation/AnimationSet;

    .line 640
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v8, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 641
    .local v0, animation:Landroid/view/animation/Animation;
    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 642
    iget-object v3, p0, Lcom/oppo/widget/OppoShortCutButton;->mOppoButtonEnterAniSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 645
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v3, p0, Lcom/oppo/widget/OppoShortCutButton;->mOppoButtonExitAniSet:Landroid/view/animation/AnimationSet;

    .line 646
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0           #animation:Landroid/view/animation/Animation;
    invoke-direct {v0, v6, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 647
    .restart local v0       #animation:Landroid/view/animation/Animation;
    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 648
    iget-object v3, p0, Lcom/oppo/widget/OppoShortCutButton;->mOppoButtonExitAniSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 649
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #animation:Landroid/view/animation/Animation;
    const/4 v5, 0x2

    const/4 v7, 0x2

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 652
    .restart local v0       #animation:Landroid/view/animation/Animation;
    invoke-virtual {v0, v9, v10}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 653
    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutButton;->mOppoButtonExitAniSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 654
    return-void
.end method


# virtual methods
.method public getCountChild(I)I
    .locals 3
    .parameter "count"

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 393
    const/4 v0, 0x0

    .line 394
    .local v0, countChild:I
    if-lt p1, v1, :cond_1

    if-gt p1, v2, :cond_1

    .line 396
    move v0, p1

    .line 406
    :cond_0
    :goto_0
    return v0

    .line 398
    :cond_1
    if-ge p1, v1, :cond_2

    .line 400
    const/4 v0, 0x1

    goto :goto_0

    .line 402
    :cond_2
    if-le p1, v2, :cond_0

    .line 404
    const/4 v0, 0x3

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 616
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 618
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 619
    .local v0, iFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutButton;->mHideImeAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 620
    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutButton;->mShowImeAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 621
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutButton;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutButton;->mInputMethodStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 622
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/widget/OppoShortCutButton;->mImeStateReceiverRegistered:Z

    .line 623
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 567
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mOnShortCutButtonListener:Lcom/oppo/widget/OppoShortCutButton$OnShortCutButtonListener;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mOnShortCutButtonListener:Lcom/oppo/widget/OppoShortCutButton$OnShortCutButtonListener;

    invoke-interface {v0, p1}, Lcom/oppo/widget/OppoShortCutButton$OnShortCutButtonListener;->onShortCutButtonClick(Landroid/view/View;)V

    .line 571
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 627
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 629
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mInputMethodStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mImeStateReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 631
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutButton;->mInputMethodStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 633
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mImeStateReceiverRegistered:Z

    .line 634
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 557
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 558
    const-string v0, "OppoShortCutButton"

    const-string v1, "-- onLayout --"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    return-void
.end method

.method public setBroadcastEnabled(Z)V
    .locals 0
    .parameter "isEnabled"

    .prologue
    .line 659
    iput-boolean p1, p0, Lcom/oppo/widget/OppoShortCutButton;->mReceiverEnabled:Z

    .line 660
    return-void
.end method

.method public setButtonBackground(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "drawable"

    .prologue
    .line 515
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 516
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 517
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 518
    const/4 v0, 0x1

    return v0
.end method

.method public setButtonEnable([Z)Z
    .locals 4
    .parameter "able"

    .prologue
    .line 456
    const/4 v0, 0x0

    .line 457
    .local v0, count:I
    array-length v2, p1

    iget v3, p0, Lcom/oppo/widget/OppoShortCutButton;->mChildCount:I

    if-ge v2, v3, :cond_0

    .line 459
    const/4 v2, 0x0

    .line 471
    :goto_0
    return v2

    .line 462
    :cond_0
    array-length v2, p1

    iget v3, p0, Lcom/oppo/widget/OppoShortCutButton;->mChildCount:I

    if-lt v2, v3, :cond_1

    .line 464
    iget v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mChildCount:I

    .line 467
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 469
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    aget-boolean v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 467
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 471
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setButtonNegativeEnbale(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 444
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 445
    const/4 v0, 0x1

    return v0
.end method

.method public setButtonNegativeText(Ljava/lang/String;)Z
    .locals 1
    .parameter "text"

    .prologue
    .line 486
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 487
    const/4 v0, 0x1

    return v0
.end method

.method public setButtonNegativeVisible(I)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 492
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 493
    const/4 v0, 0x1

    return v0
.end method

.method public setButtonNeutralEnbale(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 450
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 451
    const/4 v0, 0x1

    return v0
.end method

.method public setButtonNeutralText(Ljava/lang/String;)Z
    .locals 1
    .parameter "text"

    .prologue
    .line 498
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 499
    const/4 v0, 0x1

    return v0
.end method

.method public setButtonNeutralVisible(I)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 503
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 504
    const/4 v0, 0x1

    return v0
.end method

.method public setButtonPositiveEnbale(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 438
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 439
    const/4 v0, 0x1

    return v0
.end method

.method public setButtonPositiveText(Ljava/lang/String;)Z
    .locals 1
    .parameter "text"

    .prologue
    .line 476
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 477
    const/4 v0, 0x1

    return v0
.end method

.method public setButtonPositiveVisible(I)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 481
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 482
    const/4 v0, 0x1

    return v0
.end method

.method public setButtonText([Ljava/lang/String;)Z
    .locals 5
    .parameter "string"

    .prologue
    const/4 v2, 0x0

    .line 411
    const/4 v0, 0x0

    .line 413
    .local v0, count:I
    if-nez p1, :cond_1

    .line 432
    :cond_0
    :goto_0
    return v2

    .line 418
    :cond_1
    array-length v3, p1

    iget v4, p0, Lcom/oppo/widget/OppoShortCutButton;->mChildCount:I

    if-lt v3, v4, :cond_0

    .line 423
    array-length v2, p1

    iget v3, p0, Lcom/oppo/widget/OppoShortCutButton;->mChildCount:I

    if-lt v2, v3, :cond_2

    .line 425
    iget v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mChildCount:I

    .line 428
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 430
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 428
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 432
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setNegativeButtonTextSize(I)Z
    .locals 2
    .parameter "size"

    .prologue
    .line 537
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 538
    const/4 v0, 0x1

    return v0
.end method

.method public setNeutralButtonTextSize(I)Z
    .locals 2
    .parameter "size"

    .prologue
    .line 543
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutral:Landroid/widget/Button;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 544
    const/4 v0, 0x1

    return v0
.end method

.method public setPositiveButtonTextSize(I)Z
    .locals 2
    .parameter "size"

    .prologue
    .line 531
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 532
    const/4 v0, 0x1

    return v0
.end method

.method public setShortButtonListener(Lcom/oppo/widget/OppoShortCutButton$OnShortCutButtonListener;)V
    .locals 0
    .parameter "mListener"

    .prologue
    .line 562
    iput-object p1, p0, Lcom/oppo/widget/OppoShortCutButton;->mOnShortCutButtonListener:Lcom/oppo/widget/OppoShortCutButton$OnShortCutButtonListener;

    .line 563
    return-void
.end method

.method public setShortCutButtonBackground(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "drawable"

    .prologue
    .line 509
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoShortCutButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 510
    const/4 v0, 0x1

    return v0
.end method

.method public setShortCutButtonTextColor(I)Z
    .locals 1
    .parameter "color"

    .prologue
    .line 548
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 549
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 550
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 551
    const/4 v0, 0x1

    return v0
.end method

.method public setShortCutButtonTextSize(I)Z
    .locals 2
    .parameter "size"

    .prologue
    .line 523
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 524
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 525
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutral:Landroid/widget/Button;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 526
    const/4 v0, 0x1

    return v0
.end method
