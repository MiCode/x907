.class public Lcom/oppo/widget/OppoPathBar;
.super Landroid/widget/FrameLayout;
.source "OppoPathBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoPathBar$PathBarListener;
    }
.end annotation


# static fields
.field public static final FOLAR_LEVEL_FIVE:I = 0x5

.field public static final FOLAR_LEVEL_FOUR:I = 0x4

.field public static final FOLAR_LEVEL_NONE:I = 0x0

.field public static final FOLAR_LEVEL_ONE:I = 0x1

.field public static final FOLAR_LEVEL_SEVEN:I = 0x7

.field public static final FOLAR_LEVEL_SIX:I = 0x6

.field public static final FOLAR_LEVEL_THREE:I = 0x3

.field public static final FOLAR_LEVEL_TWO:I = 0x2

.field private static final TAG:Ljava/lang/String; = "OppoPathBar"


# instance fields
.field private final debug:Z

.field private mCurrentPath:Ljava/lang/String;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableInternal:Landroid/graphics/drawable/Drawable;

.field private mDrawableOverLeap:Landroid/graphics/drawable/Drawable;

.field private mDrawableSdCard:Landroid/graphics/drawable/Drawable;

.field private mFolderLelve:I

.field private mHeader:Ljava/lang/String;

.field private mInternalButton:Landroid/widget/Button;

.field private mInternalPath:Ljava/lang/String;

.field private mInternalTextView:Landroid/widget/TextView;

.field private mIsAtSdcard:Z

.field private mIsInternalButtonDown:Ljava/lang/Boolean;

.field private mIsInternalTextView:Ljava/lang/Boolean;

.field private mIsSdCardButtonDown:Ljava/lang/Boolean;

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mListener:Lcom/oppo/widget/OppoPathBar$PathBarListener;

.field private mPathTextFour:Landroid/widget/TextView;

.field private mPathTextOne:Landroid/widget/TextView;

.field private mPathTextThree:Landroid/widget/TextView;

.field private mPathTextTwo:Landroid/widget/TextView;

.field private mReslutPath:Ljava/lang/String;

.field private mSdCardButton:Landroid/widget/Button;

.field private mSdCardPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoPathBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoPathBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 117
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput-boolean v4, p0, Lcom/oppo/widget/OppoPathBar;->debug:Z

    .line 33
    iput-object v3, p0, Lcom/oppo/widget/OppoPathBar;->mSdCardPath:Ljava/lang/String;

    .line 34
    iput-object v3, p0, Lcom/oppo/widget/OppoPathBar;->mInternalPath:Ljava/lang/String;

    .line 35
    const-string v2, "/mnt"

    iput-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mHeader:Ljava/lang/String;

    .line 37
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mIsSdCardButtonDown:Ljava/lang/Boolean;

    .line 38
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mIsInternalButtonDown:Ljava/lang/Boolean;

    .line 39
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mIsInternalTextView:Ljava/lang/Boolean;

    .line 41
    iput-object v3, p0, Lcom/oppo/widget/OppoPathBar;->mSdCardButton:Landroid/widget/Button;

    .line 42
    iput-object v3, p0, Lcom/oppo/widget/OppoPathBar;->mInternalButton:Landroid/widget/Button;

    .line 43
    iput-object v3, p0, Lcom/oppo/widget/OppoPathBar;->mInternalTextView:Landroid/widget/TextView;

    .line 45
    iput-object v3, p0, Lcom/oppo/widget/OppoPathBar;->mPathTextOne:Landroid/widget/TextView;

    .line 46
    iput-object v3, p0, Lcom/oppo/widget/OppoPathBar;->mPathTextTwo:Landroid/widget/TextView;

    .line 47
    iput-object v3, p0, Lcom/oppo/widget/OppoPathBar;->mPathTextThree:Landroid/widget/TextView;

    .line 48
    iput-object v3, p0, Lcom/oppo/widget/OppoPathBar;->mPathTextFour:Landroid/widget/TextView;

    .line 50
    iput-object v3, p0, Lcom/oppo/widget/OppoPathBar;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 52
    invoke-static {}, Lcom/oppo/os/OppoEnvironment;->getExternalSdDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mCurrentPath:Ljava/lang/String;

    .line 53
    iput-boolean v4, p0, Lcom/oppo/widget/OppoPathBar;->mIsAtSdcard:Z

    .line 54
    iput-object v3, p0, Lcom/oppo/widget/OppoPathBar;->mReslutPath:Ljava/lang/String;

    .line 55
    iput v5, p0, Lcom/oppo/widget/OppoPathBar;->mFolderLelve:I

    .line 57
    iput-object v3, p0, Lcom/oppo/widget/OppoPathBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 58
    iput-object v3, p0, Lcom/oppo/widget/OppoPathBar;->mDrawableSdCard:Landroid/graphics/drawable/Drawable;

    .line 59
    iput-object v3, p0, Lcom/oppo/widget/OppoPathBar;->mDrawableInternal:Landroid/graphics/drawable/Drawable;

    .line 60
    iput-object v3, p0, Lcom/oppo/widget/OppoPathBar;->mDrawableOverLeap:Landroid/graphics/drawable/Drawable;

    .line 121
    const-string v2, "OppoPathBar"

    const-string v3, "OppoPathBar -- create !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {}, Lcom/oppo/os/OppoEnvironment;->getExternalSdDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 126
    .local v0, index:I
    invoke-static {}, Lcom/oppo/os/OppoEnvironment;->getExternalSdDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mSdCardPath:Ljava/lang/String;

    .line 128
    invoke-static {}, Lcom/oppo/os/OppoEnvironment;->getInternalSdDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 130
    invoke-static {}, Lcom/oppo/os/OppoEnvironment;->getInternalSdDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mInternalPath:Ljava/lang/String;

    .line 134
    const-string v2, "OppoPathBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OppoPathBar -- mSdCardPath == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mSdCardPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-string v2, "OppoPathBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OppoPathBar -- mInternalPath == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mInternalPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {p0}, Lcom/oppo/widget/OppoPathBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080356

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 139
    invoke-virtual {p0}, Lcom/oppo/widget/OppoPathBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080745

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mDrawableSdCard:Landroid/graphics/drawable/Drawable;

    .line 140
    invoke-virtual {p0}, Lcom/oppo/widget/OppoPathBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10804d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mDrawableInternal:Landroid/graphics/drawable/Drawable;

    .line 141
    invoke-virtual {p0}, Lcom/oppo/widget/OppoPathBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x108035d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mDrawableOverLeap:Landroid/graphics/drawable/Drawable;

    .line 143
    iget-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 145
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x10900a8

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 147
    const v2, 0x10203ce

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoPathBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mSdCardButton:Landroid/widget/Button;

    .line 148
    iget-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mSdCardButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setFadeEffectEnabled(Z)V

    .line 149
    iget-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mSdCardButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    const v2, 0x10203cd

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoPathBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mInternalButton:Landroid/widget/Button;

    .line 152
    iget-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mInternalButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setFadeEffectEnabled(Z)V

    .line 153
    iget-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mInternalButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    const v2, 0x10203cf

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoPathBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mInternalTextView:Landroid/widget/TextView;

    .line 157
    const v2, 0x10202f8

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoPathBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 158
    const v2, 0x10203c9

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoPathBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mPathTextOne:Landroid/widget/TextView;

    .line 159
    iget-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mPathTextOne:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    const v2, 0x10203ca

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoPathBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mPathTextTwo:Landroid/widget/TextView;

    .line 162
    iget-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mPathTextTwo:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    const v2, 0x10203cb

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoPathBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mPathTextThree:Landroid/widget/TextView;

    .line 165
    iget-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mPathTextThree:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    const v2, 0x10203cc

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoPathBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mPathTextFour:Landroid/widget/TextView;

    .line 168
    iget-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mPathTextFour:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    return-void
.end method

.method private getSpecifiedCharacterNumber(Ljava/lang/String;)I
    .locals 5
    .parameter "path"

    .prologue
    .line 630
    const-string v3, "/"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 631
    .local v2, p:Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 632
    .local v1, m:Ljava/util/regex/Matcher;
    const/4 v0, 0x0

    .line 633
    .local v0, count:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 635
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 637
    :cond_0
    return v0
.end method

.method private performInternalButtonClick()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/oppo/widget/OppoPathBar;->mListener:Lcom/oppo/widget/OppoPathBar$PathBarListener;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/oppo/widget/OppoPathBar;->mListener:Lcom/oppo/widget/OppoPathBar$PathBarListener;

    iget-object v1, p0, Lcom/oppo/widget/OppoPathBar;->mReslutPath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/oppo/widget/OppoPathBar$PathBarListener;->onPathChanged(Ljava/lang/String;)V

    .line 95
    :cond_0
    return-void
.end method

.method private performSdCardButtonClick()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oppo/widget/OppoPathBar;->mListener:Lcom/oppo/widget/OppoPathBar$PathBarListener;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/oppo/widget/OppoPathBar;->mListener:Lcom/oppo/widget/OppoPathBar$PathBarListener;

    iget-object v1, p0, Lcom/oppo/widget/OppoPathBar;->mReslutPath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/oppo/widget/OppoPathBar$PathBarListener;->onPathChanged(Ljava/lang/String;)V

    .line 87
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 308
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 177
    :pswitch_1
    iget-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mIsSdCardButtonDown:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/oppo/widget/OppoPathBar;->mHeader:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/widget/OppoPathBar;->mSdCardPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mReslutPath:Ljava/lang/String;

    .line 185
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/oppo/widget/OppoPathBar;->performSdCardButtonClick()V

    goto :goto_0

    .line 181
    :cond_2
    iget-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mIsInternalButtonDown:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/oppo/widget/OppoPathBar;->mHeader:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/widget/OppoPathBar;->mInternalPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mReslutPath:Ljava/lang/String;

    goto :goto_1

    .line 191
    :pswitch_2
    iget v2, p0, Lcom/oppo/widget/OppoPathBar;->mFolderLelve:I

    if-ne v6, v2, :cond_4

    .line 193
    iget-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mCurrentPath:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 194
    .local v1, position:I
    if-ge v5, v1, :cond_0

    .line 196
    iget-boolean v2, p0, Lcom/oppo/widget/OppoPathBar;->mIsAtSdcard:Z

    if-eqz v2, :cond_3

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/oppo/widget/OppoPathBar;->mHeader:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/widget/OppoPathBar;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mReslutPath:Ljava/lang/String;

    .line 206
    :goto_2
    const-string v2, "OppoPathBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentPath.substring(position)  == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-direct {p0}, Lcom/oppo/widget/OppoPathBar;->performSdCardButtonClick()V

    goto/16 :goto_0

    .line 202
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/oppo/widget/OppoPathBar;->mHeader:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/widget/OppoPathBar;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mReslutPath:Ljava/lang/String;

    goto :goto_2

    .line 216
    .end local v1           #position:I
    :cond_4
    const/4 v2, 0x4

    iget v3, p0, Lcom/oppo/widget/OppoPathBar;->mFolderLelve:I

    if-ne v2, v3, :cond_0

    .line 218
    iget-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mCurrentPath:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 219
    .restart local v1       #position:I
    if-ge v5, v1, :cond_0

    .line 221
    iget-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mReslutPath:Ljava/lang/String;

    .line 222
    iget-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mReslutPath:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 223
    .local v0, index:I
    if-ge v5, v0, :cond_0

    .line 225
    iget-boolean v2, p0, Lcom/oppo/widget/OppoPathBar;->mIsAtSdcard:Z

    if-eqz v2, :cond_5

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/oppo/widget/OppoPathBar;->mHeader:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/widget/OppoPathBar;->mReslutPath:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mReslutPath:Ljava/lang/String;

    .line 244
    :goto_3
    invoke-direct {p0}, Lcom/oppo/widget/OppoPathBar;->performSdCardButtonClick()V

    goto/16 :goto_0

    .line 231
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/oppo/widget/OppoPathBar;->mHeader:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/widget/OppoPathBar;->mReslutPath:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mReslutPath:Ljava/lang/String;

    goto :goto_3

    .line 251
    .end local v0           #index:I
    .end local v1           #position:I
    :pswitch_3
    iget v2, p0, Lcom/oppo/widget/OppoPathBar;->mFolderLelve:I

    if-ge v6, v2, :cond_0

    .line 253
    iget-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mCurrentPath:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 254
    .restart local v1       #position:I
    if-ge v5, v1, :cond_0

    .line 256
    iget-boolean v2, p0, Lcom/oppo/widget/OppoPathBar;->mIsAtSdcard:Z

    if-eqz v2, :cond_6

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/oppo/widget/OppoPathBar;->mHeader:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/widget/OppoPathBar;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mReslutPath:Ljava/lang/String;

    .line 267
    :goto_4
    const-string v2, "OppoPathBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentPath.substring(position) == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-direct {p0}, Lcom/oppo/widget/OppoPathBar;->performSdCardButtonClick()V

    goto/16 :goto_0

    .line 262
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/oppo/widget/OppoPathBar;->mHeader:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/widget/OppoPathBar;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mReslutPath:Ljava/lang/String;

    goto :goto_4

    .line 287
    .end local v1           #position:I
    :pswitch_4
    iget-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mSdCardButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 288
    iget-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mInternalButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/oppo/widget/OppoPathBar;->mHeader:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/widget/OppoPathBar;->mSdCardPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mReslutPath:Ljava/lang/String;

    .line 290
    invoke-direct {p0}, Lcom/oppo/widget/OppoPathBar;->performSdCardButtonClick()V

    goto/16 :goto_0

    .line 296
    :pswitch_5
    iget-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mSdCardButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 297
    iget-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mInternalButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/oppo/widget/OppoPathBar;->mHeader:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/widget/OppoPathBar;->mInternalPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/widget/OppoPathBar;->mReslutPath:Ljava/lang/String;

    .line 299
    invoke-direct {p0}, Lcom/oppo/widget/OppoPathBar;->performInternalButtonClick()V

    goto/16 :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x10203c9
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public setHeader(Ljava/lang/String;)V
    .locals 12
    .parameter "currentPath"

    .prologue
    const/4 v11, 0x2

    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 387
    if-nez p1, :cond_1

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    const-string v4, "OppoPathBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setHeader -- currentPath == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mHeader:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v10, v4, :cond_7

    .line 399
    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mInternalPath:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v10, v4, :cond_5

    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mSdCardPath:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v10, v4, :cond_5

    .line 402
    iput-boolean v7, p0, Lcom/oppo/widget/OppoPathBar;->mIsAtSdcard:Z

    .line 403
    const-string v4, "/"

    invoke-virtual {p1, v4, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 404
    .local v2, startIndex:I
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mCurrentPath:Ljava/lang/String;

    .line 423
    .end local v2           #startIndex:I
    :goto_1
    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mCurrentPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/oppo/widget/OppoPathBar;->mSdCardPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 426
    .local v0, index:I
    const-string v4, "OppoPathBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setHeader -- index -- == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    if-ne v10, v0, :cond_8

    .line 431
    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mSdCardButton:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 432
    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mInternalButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 433
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mIsSdCardButtonDown:Ljava/lang/Boolean;

    .line 434
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mIsInternalButtonDown:Ljava/lang/Boolean;

    .line 444
    :goto_2
    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mCurrentPath:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/oppo/widget/OppoPathBar;->getSpecifiedCharacterNumber(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoPathBar;->mFolderLelve:I

    .line 445
    if-eq v10, v0, :cond_2

    .line 447
    iget v4, p0, Lcom/oppo/widget/OppoPathBar;->mFolderLelve:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/oppo/widget/OppoPathBar;->mFolderLelve:I

    .line 450
    :cond_2
    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mCurrentPath:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 452
    .local v1, position:I
    const/4 v3, 0x0

    .line 453
    .local v3, subString:Ljava/lang/String;
    if-ge v10, v1, :cond_3

    .line 455
    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mCurrentPath:Ljava/lang/String;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 458
    :cond_3
    iget v4, p0, Lcom/oppo/widget/OppoPathBar;->mFolderLelve:I

    if-eqz v4, :cond_0

    .line 463
    iget v4, p0, Lcom/oppo/widget/OppoPathBar;->mFolderLelve:I

    if-ne v8, v4, :cond_a

    .line 465
    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mLinearLayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 467
    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mCurrentPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/oppo/widget/OppoPathBar;->mSdCardPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 471
    const-string v4, "OppoPathBar"

    const-string v5, "setHeader --FOLAR_LEVEL_ONE /sdcard"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showPathOne(Ljava/lang/Boolean;)V

    .line 474
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showPathTwo(Ljava/lang/Boolean;)V

    .line 475
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showPathThree(Ljava/lang/Boolean;)V

    .line 476
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showPathFour(Ljava/lang/Boolean;)V

    .line 477
    invoke-virtual {p0}, Lcom/oppo/widget/OppoPathBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040565

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/oppo/widget/OppoPathBar;->mDrawableSdCard:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4, v5}, Lcom/oppo/widget/OppoPathBar;->setPathOneText(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 492
    :cond_4
    :goto_3
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showSdCardButton(Ljava/lang/Boolean;)V

    .line 493
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showInternalButton(Ljava/lang/Boolean;)V

    .line 494
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showInternalTextView(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 406
    .end local v0           #index:I
    .end local v1           #position:I
    .end local v3           #subString:Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mSdCardPath:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v10, v4, :cond_6

    .line 408
    iput-boolean v8, p0, Lcom/oppo/widget/OppoPathBar;->mIsAtSdcard:Z

    .line 409
    const-string v4, "/"

    invoke-virtual {p1, v4, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 410
    .restart local v2       #startIndex:I
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mCurrentPath:Ljava/lang/String;

    goto/16 :goto_1

    .line 414
    .end local v2           #startIndex:I
    :cond_6
    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mInternalPath:Ljava/lang/String;

    iput-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mCurrentPath:Ljava/lang/String;

    goto/16 :goto_1

    .line 419
    :cond_7
    iput-object p1, p0, Lcom/oppo/widget/OppoPathBar;->mCurrentPath:Ljava/lang/String;

    goto/16 :goto_1

    .line 438
    .restart local v0       #index:I
    :cond_8
    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mSdCardButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 439
    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mInternalButton:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 440
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mIsSdCardButtonDown:Ljava/lang/Boolean;

    .line 441
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mIsInternalButtonDown:Ljava/lang/Boolean;

    goto/16 :goto_2

    .line 479
    .restart local v1       #position:I
    .restart local v3       #subString:Ljava/lang/String;
    :cond_9
    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mCurrentPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/oppo/widget/OppoPathBar;->mInternalPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 483
    const-string v4, "OppoPathBar"

    const-string v5, "-- setHeader --FOLAR_LEVEL_ONE /internal"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showPathOne(Ljava/lang/Boolean;)V

    .line 486
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showPathTwo(Ljava/lang/Boolean;)V

    .line 487
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showPathThree(Ljava/lang/Boolean;)V

    .line 488
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showPathFour(Ljava/lang/Boolean;)V

    .line 489
    invoke-virtual {p0}, Lcom/oppo/widget/OppoPathBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040566

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/oppo/widget/OppoPathBar;->mDrawableInternal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4, v5}, Lcom/oppo/widget/OppoPathBar;->setPathOneText(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 496
    :cond_a
    iget v4, p0, Lcom/oppo/widget/OppoPathBar;->mFolderLelve:I

    if-ne v11, v4, :cond_c

    .line 498
    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 499
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showPathOne(Ljava/lang/Boolean;)V

    .line 500
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showPathTwo(Ljava/lang/Boolean;)V

    .line 501
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showPathThree(Ljava/lang/Boolean;)V

    .line 502
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showPathFour(Ljava/lang/Boolean;)V

    .line 503
    if-ne v10, v0, :cond_b

    .line 505
    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mDrawableInternal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v9, v4}, Lcom/oppo/widget/OppoPathBar;->setPathOneText(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 511
    :goto_4
    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3, v4}, Lcom/oppo/widget/OppoPathBar;->setPathTwoText(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 512
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showSdCardButton(Ljava/lang/Boolean;)V

    .line 513
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showInternalButton(Ljava/lang/Boolean;)V

    .line 514
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showInternalTextView(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 509
    :cond_b
    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mDrawableSdCard:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v9, v4}, Lcom/oppo/widget/OppoPathBar;->setPathOneText(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 516
    :cond_c
    const/4 v4, 0x3

    iget v5, p0, Lcom/oppo/widget/OppoPathBar;->mFolderLelve:I

    if-ne v4, v5, :cond_e

    .line 518
    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 519
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showPathOne(Ljava/lang/Boolean;)V

    .line 520
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showPathTwo(Ljava/lang/Boolean;)V

    .line 521
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showPathThree(Ljava/lang/Boolean;)V

    .line 522
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showPathFour(Ljava/lang/Boolean;)V

    .line 523
    if-ne v10, v0, :cond_d

    .line 525
    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mDrawableInternal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v9, v4}, Lcom/oppo/widget/OppoPathBar;->setPathOneText(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 531
    :goto_5
    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v9, v4}, Lcom/oppo/widget/OppoPathBar;->setPathTwoText(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 532
    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3, v4}, Lcom/oppo/widget/OppoPathBar;->setPathThreeText(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 533
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showSdCardButton(Ljava/lang/Boolean;)V

    .line 534
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showInternalButton(Ljava/lang/Boolean;)V

    .line 535
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showInternalTextView(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 529
    :cond_d
    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mDrawableSdCard:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v9, v4}, Lcom/oppo/widget/OppoPathBar;->setPathOneText(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 537
    :cond_e
    const/4 v4, 0x4

    iget v5, p0, Lcom/oppo/widget/OppoPathBar;->mFolderLelve:I

    if-ne v4, v5, :cond_10

    .line 539
    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 540
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showPathOne(Ljava/lang/Boolean;)V

    .line 541
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showPathTwo(Ljava/lang/Boolean;)V

    .line 542
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showPathThree(Ljava/lang/Boolean;)V

    .line 543
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showPathFour(Ljava/lang/Boolean;)V

    .line 544
    if-ne v10, v0, :cond_f

    .line 546
    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mDrawableInternal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v9, v4}, Lcom/oppo/widget/OppoPathBar;->setPathOneText(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 552
    :goto_6
    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v9, v4}, Lcom/oppo/widget/OppoPathBar;->setPathTwoText(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 553
    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v9, v4}, Lcom/oppo/widget/OppoPathBar;->setPathThreeText(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 554
    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3, v4}, Lcom/oppo/widget/OppoPathBar;->setPathFourText(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 555
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showSdCardButton(Ljava/lang/Boolean;)V

    .line 556
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showInternalButton(Ljava/lang/Boolean;)V

    .line 557
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showInternalTextView(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 550
    :cond_f
    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mDrawableSdCard:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v9, v4}, Lcom/oppo/widget/OppoPathBar;->setPathOneText(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 559
    :cond_10
    const/4 v4, 0x5

    iget v5, p0, Lcom/oppo/widget/OppoPathBar;->mFolderLelve:I

    if-ne v4, v5, :cond_12

    .line 561
    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 562
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showPathOne(Ljava/lang/Boolean;)V

    .line 563
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showPathTwo(Ljava/lang/Boolean;)V

    .line 564
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showPathThree(Ljava/lang/Boolean;)V

    .line 565
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showPathFour(Ljava/lang/Boolean;)V

    .line 566
    if-ne v10, v0, :cond_11

    .line 568
    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mDrawableInternal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v9, v4}, Lcom/oppo/widget/OppoPathBar;->setPathOneText(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 574
    :goto_7
    const-string v4, ""

    iget-object v5, p0, Lcom/oppo/widget/OppoPathBar;->mDrawableOverLeap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4, v5}, Lcom/oppo/widget/OppoPathBar;->setPathTwoText(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 575
    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v9, v4}, Lcom/oppo/widget/OppoPathBar;->setPathThreeText(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 576
    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3, v4}, Lcom/oppo/widget/OppoPathBar;->setPathFourText(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 577
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showSdCardButton(Ljava/lang/Boolean;)V

    .line 578
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showInternalButton(Ljava/lang/Boolean;)V

    .line 579
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showInternalTextView(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 572
    :cond_11
    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mDrawableSdCard:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v9, v4}, Lcom/oppo/widget/OppoPathBar;->setPathOneText(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 581
    :cond_12
    const/4 v4, 0x6

    iget v5, p0, Lcom/oppo/widget/OppoPathBar;->mFolderLelve:I

    if-ne v4, v5, :cond_14

    .line 583
    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 584
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showPathOne(Ljava/lang/Boolean;)V

    .line 585
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showPathTwo(Ljava/lang/Boolean;)V

    .line 586
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showPathThree(Ljava/lang/Boolean;)V

    .line 587
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showPathFour(Ljava/lang/Boolean;)V

    .line 588
    if-ne v10, v0, :cond_13

    .line 590
    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mDrawableInternal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v9, v4}, Lcom/oppo/widget/OppoPathBar;->setPathOneText(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 596
    :goto_8
    const-string v4, ""

    iget-object v5, p0, Lcom/oppo/widget/OppoPathBar;->mDrawableOverLeap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4, v5}, Lcom/oppo/widget/OppoPathBar;->setPathTwoText(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 597
    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v9, v4}, Lcom/oppo/widget/OppoPathBar;->setPathThreeText(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 598
    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3, v4}, Lcom/oppo/widget/OppoPathBar;->setPathFourText(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 599
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showSdCardButton(Ljava/lang/Boolean;)V

    .line 600
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showInternalButton(Ljava/lang/Boolean;)V

    .line 601
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showInternalTextView(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 594
    :cond_13
    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mDrawableSdCard:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v9, v4}, Lcom/oppo/widget/OppoPathBar;->setPathOneText(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    .line 603
    :cond_14
    const/4 v4, 0x7

    iget v5, p0, Lcom/oppo/widget/OppoPathBar;->mFolderLelve:I

    if-gt v4, v5, :cond_0

    .line 605
    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 606
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showPathOne(Ljava/lang/Boolean;)V

    .line 607
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showPathTwo(Ljava/lang/Boolean;)V

    .line 608
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showPathThree(Ljava/lang/Boolean;)V

    .line 609
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showPathFour(Ljava/lang/Boolean;)V

    .line 610
    if-ne v10, v0, :cond_15

    .line 612
    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mDrawableInternal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v9, v4}, Lcom/oppo/widget/OppoPathBar;->setPathOneText(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 618
    :goto_9
    const-string v4, ""

    iget-object v5, p0, Lcom/oppo/widget/OppoPathBar;->mDrawableOverLeap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4, v5}, Lcom/oppo/widget/OppoPathBar;->setPathTwoText(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 619
    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v9, v4}, Lcom/oppo/widget/OppoPathBar;->setPathThreeText(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 620
    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3, v4}, Lcom/oppo/widget/OppoPathBar;->setPathFourText(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 621
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showSdCardButton(Ljava/lang/Boolean;)V

    .line 622
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showInternalButton(Ljava/lang/Boolean;)V

    .line 623
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPathBar;->showInternalTextView(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 616
    :cond_15
    iget-object v4, p0, Lcom/oppo/widget/OppoPathBar;->mDrawableSdCard:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v9, v4}, Lcom/oppo/widget/OppoPathBar;->setPathOneText(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_9
.end method

.method public setPathBarListener(Lcom/oppo/widget/OppoPathBar$PathBarListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/oppo/widget/OppoPathBar;->mListener:Lcom/oppo/widget/OppoPathBar$PathBarListener;

    .line 103
    return-void
.end method

.method public setPathFourText(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "string"
    .parameter "drawable"

    .prologue
    const/16 v3, 0x3c

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 377
    iget-object v0, p0, Lcom/oppo/widget/OppoPathBar;->mPathTextFour:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    if-eqz p2, :cond_0

    .line 380
    invoke-virtual {p2, v2, v2, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 381
    iget-object v0, p0, Lcom/oppo/widget/OppoPathBar;->mPathTextFour:Landroid/widget/TextView;

    invoke-virtual {v0, p2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 383
    :cond_0
    return-void
.end method

.method public setPathOneText(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "string"
    .parameter "drawable"

    .prologue
    const/16 v3, 0x3c

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 347
    iget-object v0, p0, Lcom/oppo/widget/OppoPathBar;->mPathTextOne:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    if-eqz p2, :cond_0

    .line 350
    invoke-virtual {p2, v2, v2, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 351
    iget-object v0, p0, Lcom/oppo/widget/OppoPathBar;->mPathTextOne:Landroid/widget/TextView;

    invoke-virtual {v0, p2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 353
    :cond_0
    return-void
.end method

.method public setPathThreeText(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "string"
    .parameter "drawable"

    .prologue
    const/16 v3, 0x3c

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 367
    iget-object v0, p0, Lcom/oppo/widget/OppoPathBar;->mPathTextThree:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    if-eqz p2, :cond_0

    .line 370
    invoke-virtual {p2, v2, v2, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 371
    iget-object v0, p0, Lcom/oppo/widget/OppoPathBar;->mPathTextThree:Landroid/widget/TextView;

    invoke-virtual {v0, p2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 373
    :cond_0
    return-void
.end method

.method public setPathTwoText(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "string"
    .parameter "drawable"

    .prologue
    const/16 v3, 0x3c

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 357
    iget-object v0, p0, Lcom/oppo/widget/OppoPathBar;->mPathTextTwo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    if-eqz p2, :cond_0

    .line 360
    invoke-virtual {p2, v2, v2, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 361
    iget-object v0, p0, Lcom/oppo/widget/OppoPathBar;->mPathTextTwo:Landroid/widget/TextView;

    invoke-virtual {v0, p2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 363
    :cond_0
    return-void
.end method

.method public showInternalButton(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "showInternalButton"

    .prologue
    .line 338
    return-void
.end method

.method public showInternalTextView(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "showInternalTextView"

    .prologue
    .line 342
    iget-object v1, p0, Lcom/oppo/widget/OppoPathBar;->mInternalTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 343
    return-void

    .line 342
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showPathFour(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "showPathFour"

    .prologue
    .line 327
    iget-object v1, p0, Lcom/oppo/widget/OppoPathBar;->mPathTextFour:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 328
    return-void

    .line 327
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showPathOne(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "showPathOne"

    .prologue
    .line 312
    iget-object v1, p0, Lcom/oppo/widget/OppoPathBar;->mPathTextOne:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 313
    return-void

    .line 312
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showPathThree(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "showPathThree"

    .prologue
    .line 322
    iget-object v1, p0, Lcom/oppo/widget/OppoPathBar;->mPathTextThree:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 323
    return-void

    .line 322
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showPathTwo(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "showPathTwo"

    .prologue
    .line 317
    iget-object v1, p0, Lcom/oppo/widget/OppoPathBar;->mPathTextTwo:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    return-void

    .line 317
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showSdCardButton(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "showSdCardButton"

    .prologue
    .line 333
    return-void
.end method
