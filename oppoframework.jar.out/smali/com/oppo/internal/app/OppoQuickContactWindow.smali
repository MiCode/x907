.class public Lcom/oppo/internal/app/OppoQuickContactWindow;
.super Ljava/lang/Object;
.source "OppoQuickContactWindow.java"

# interfaces
.implements Landroid/view/Window$Callback;
.implements Lcom/oppo/internal/content/OppoNotifyingAsyncQueryHandler$AsyncQueryListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/KeyEvent$Callback;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/internal/app/OppoQuickContactWindow$OnResultListener;,
        Lcom/oppo/internal/app/OppoQuickContactWindow$OnDismissListener;
    }
.end annotation


# static fields
.field public static final ACTION_EDIT_FLASH_CONTACT:Ljava/lang/String; = "oppo.intent.action.flashcontact.EDIT"

.field public static final ACTION_RESOLVER_EDIT_CONTACT:Ljava/lang/String; = "oppo.intent.editcontact_resolver"

.field public static final ACTION_RESOLVER_INSERT_CONTACT:Ljava/lang/String; = "oppo.intent.insertcontact_resolver"

.field private static final FLAG_CLEAR_ALL:I = 0x2

.field static final LOGD:Z = true

.field public static final SHARE_NAME:Ljava/lang/String; = "quick_window"

.field private static final TAG:Ljava/lang/String; = "OppoQuickContactWindow"

.field static final TRACE_LAUNCH:Z = true

.field static final TRACE_TAG:Ljava/lang/String; = "quickcontact"

.field public static final WHETHER_CLEAR:Ljava/lang/String; = "whether_clear"


# instance fields
.field private hasSet:Z

.field private mActionPool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mActionRecycled:I

.field private mAnchor:Landroid/graphics/Rect;

.field private mArrowDown:Landroid/widget/ImageView;

.field private mArrowUp:Landroid/widget/ImageView;

.field private final mContext:Landroid/content/Context;

.field private mDecor:Landroid/view/View;

.field private mDismissListener:Lcom/oppo/internal/app/OppoQuickContactWindow$OnDismissListener;

.field private mDismissed:Z

.field private mExcludeMimes:[Ljava/lang/String;

.field private mFooterDisambig:Landroid/view/View;

.field private mHasData:Z

.field private mHasValidSocial:Z

.field private mHeader:Landroid/view/View;

.field private mIcon:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mMode:I

.field private mNumber:Ljava/lang/String;

.field private mOnResultListener:Lcom/oppo/internal/app/OppoQuickContactWindow$OnResultListener;

.field private mQuerying:Z

.field private final mRect:Landroid/graphics/Rect;

.field private mRequestedY:I

.field private mResources:Landroid/content/res/Resources;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mShadowHoriz:I

.field private mShadowTouch:I

.field private mShadowVert:I

.field private mShowing:Z

.field private mTrack:Landroid/view/ViewGroup;

.field private mTrackAnim:Landroid/view/animation/Animation;

.field private mTrackScroll:Landroid/widget/HorizontalScrollView;

.field private mWindow:Landroid/view/Window;

.field private final mWindowManager:Landroid/view/WindowManager;

.field private mWindowRecycled:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 447
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 370
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mRect:Landroid/graphics/Rect;

    .line 372
    iput-boolean v2, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mDismissed:Z

    .line 373
    iput-boolean v2, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mQuerying:Z

    .line 374
    iput-boolean v2, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mShowing:Z

    .line 394
    iput-boolean v2, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mHasValidSocial:Z

    .line 395
    iput-boolean v2, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mHasData:Z

    .line 413
    iput v2, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mWindowRecycled:I

    .line 414
    iput v2, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mActionRecycled:I

    .line 434
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mActionPool:Ljava/util/LinkedList;

    .line 448
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x10302a5

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mContext:Landroid/content/Context;

    .line 449
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mInflater:Landroid/view/LayoutInflater;

    .line 450
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 452
    iget-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mWindow:Landroid/view/Window;

    .line 453
    iget-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 454
    iget-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v1, v2, v3, v3}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 456
    iget-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mWindow:Landroid/view/Window;

    const v2, 0x10900c1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setContentView(I)V

    .line 458
    iget-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mWindow:Landroid/view/Window;

    const v2, 0x10203e8

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mArrowUp:Landroid/widget/ImageView;

    .line 459
    iget-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mWindow:Landroid/view/Window;

    const v2, 0x10203e9

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mArrowDown:Landroid/widget/ImageView;

    .line 461
    iget-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 462
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x1050095

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mShadowHoriz:I

    .line 463
    const v1, 0x1050096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mShadowVert:I

    .line 464
    const v1, 0x1050097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mShadowTouch:I

    .line 466
    iget-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mScreenWidth:I

    .line 467
    iget-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mScreenHeight:I

    .line 469
    iget-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mWindow:Landroid/view/Window;

    const v2, 0x10203e5

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mTrack:Landroid/view/ViewGroup;

    .line 470
    iget-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mWindow:Landroid/view/Window;

    const v2, 0x10203e4

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    iput-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mTrackScroll:Landroid/widget/HorizontalScrollView;

    .line 473
    iget-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mWindow:Landroid/view/Window;

    const v2, 0x10203e7

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mFooterDisambig:Landroid/view/View;

    .line 480
    iget-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mContext:Landroid/content/Context;

    const v2, 0x10a0042

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mTrackAnim:Landroid/view/animation/Animation;

    .line 481
    iget-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mTrackAnim:Landroid/view/animation/Animation;

    new-instance v2, Lcom/oppo/internal/app/OppoQuickContactWindow$1;

    invoke-direct {v2, p0}, Lcom/oppo/internal/app/OppoQuickContactWindow$1;-><init>(Lcom/oppo/internal/app/OppoQuickContactWindow;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 492
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mIcon:Ljava/util/ArrayList;

    .line 493
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mResources:Landroid/content/res/Resources;

    .line 496
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oppo/internal/app/OppoQuickContactWindow$OnDismissListener;Lcom/oppo/internal/app/OppoQuickContactWindow$OnResultListener;)V
    .locals 1
    .parameter "context"
    .parameter "dismissListener"
    .parameter "OnResultListener"

    .prologue
    .line 439
    invoke-direct {p0, p1}, Lcom/oppo/internal/app/OppoQuickContactWindow;-><init>(Landroid/content/Context;)V

    .line 440
    iput-object p2, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mDismissListener:Lcom/oppo/internal/app/OppoQuickContactWindow$OnDismissListener;

    .line 441
    iput-object p3, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mOnResultListener:Lcom/oppo/internal/app/OppoQuickContactWindow$OnResultListener;

    .line 443
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->hasSet:Z

    .line 444
    return-void
.end method

.method private addView(J)V
    .locals 4
    .parameter "personId"

    .prologue
    .line 910
    iget-object v2, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mIcon:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 948
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mIcon:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 950
    iget-object v2, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 951
    .local v1, index:I
    iget-object v3, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mTrack:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mIcon:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v3, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 948
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 953
    .end local v1           #index:I
    :cond_0
    return-void
.end method

.method private addView(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 10
    .parameter
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent$ShortcutIconResource;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, drawableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent$ShortcutIconResource;>;"
    const/4 v9, 0x0

    .line 884
    const/4 v5, 0x0

    .line 885
    .local v5, resources:Landroid/content/res/Resources;
    const/4 v2, -0x1

    .line 887
    .local v2, id:I
    :try_start_0
    iget-object v6, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 888
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {v4, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 894
    .end local v4           #packageManager:Landroid/content/pm/PackageManager;
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 896
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent$ShortcutIconResource;

    iget-object v6, v6, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {v5, v6, v9, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 897
    iget-object v6, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mIcon:Ljava/util/ArrayList;

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {p0, v7, v8, v1}, Lcom/oppo/internal/app/OppoQuickContactWindow;->obtainView(Landroid/content/Intent;Landroid/graphics/drawable/Drawable;I)Lcom/oppo/internal/widget/OppoCheckableImageView;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 894
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 890
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .line 891
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "OppoQuickContactWindow"

    const-string v7, "get packagemanager error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 900
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #i:I
    :cond_0
    const/4 v1, 0x0

    :goto_2
    iget-object v6, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mIcon:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 902
    iget-object v6, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .line 903
    .local v3, index:I
    iget-object v7, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mTrack:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mIcon:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v7, v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 900
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 905
    .end local v3           #index:I
    :cond_1
    return-void
.end method

.method private addView([I)V
    .locals 6
    .parameter "intentValues"

    .prologue
    .line 870
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 872
    iget-object v2, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mIcon:Ljava/util/ArrayList;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v4, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mResources:Landroid/content/res/Resources;

    aget v5, p1, v0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v3, v4, v0}, Lcom/oppo/internal/app/OppoQuickContactWindow;->obtainView(Landroid/content/Intent;Landroid/graphics/drawable/Drawable;I)Lcom/oppo/internal/widget/OppoCheckableImageView;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 870
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 874
    :cond_0
    const-string v2, "OppoQuickContactWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIcon.size == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mIcon:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mIcon:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 877
    iget-object v2, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 878
    .local v1, index:I
    iget-object v3, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mTrack:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mIcon:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v3, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 875
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 880
    .end local v1           #index:I
    :cond_1
    return-void
.end method

.method private considerShowing()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 692
    iput-boolean v2, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mHasData:Z

    .line 693
    iget-boolean v0, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mHasData:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mShowing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mDismissed:Z

    if-nez v0, :cond_1

    .line 695
    iget v0, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mHasValidSocial:Z

    if-nez v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mHeader:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 699
    invoke-direct {p0, v2}, Lcom/oppo/internal/app/OppoQuickContactWindow;->getHeaderView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mHeader:Landroid/view/View;

    .line 703
    :cond_0
    invoke-direct {p0}, Lcom/oppo/internal/app/OppoQuickContactWindow;->showInternal()V

    .line 705
    :cond_1
    return-void
.end method

.method private dismissInternal()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 643
    iget-object v3, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mDecor:Landroid/view/View;

    if-eqz v3, :cond_1

    move v0, v1

    .line 644
    .local v0, hadDecor:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 646
    iget-object v3, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mDecor:Landroid/view/View;

    invoke-interface {v3, v4}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 647
    iget v3, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mWindowRecycled:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mWindowRecycled:I

    .line 648
    iget-object v3, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mDecor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 649
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mDecor:Landroid/view/View;

    .line 650
    iget-object v3, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->closeAllPanels()V

    .line 652
    :cond_0
    iput-boolean v2, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mShowing:Z

    .line 653
    iput-boolean v1, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mDismissed:Z

    .line 657
    iput-boolean v2, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mQuerying:Z

    .line 660
    iget-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mHeader:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 661
    invoke-direct {p0}, Lcom/oppo/internal/app/OppoQuickContactWindow;->resetTrack()V

    .line 662
    return-void

    .end local v0           #hadDecor:Z
    :cond_1
    move v0, v2

    .line 643
    goto :goto_0
.end method

.method private getHeaderView(I)Landroid/view/View;
    .locals 4
    .parameter "mode"

    .prologue
    .line 500
    const/4 v0, 0x0

    .line 501
    .local v0, header:Landroid/view/View;
    packed-switch p1, :pswitch_data_0

    .line 522
    :goto_0
    instance-of v2, v0, Landroid/view/ViewStub;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 525
    check-cast v1, Landroid/view/ViewStub;

    .line 526
    .local v1, stub:Landroid/view/ViewStub;
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 533
    .end local v1           #stub:Landroid/view/ViewStub;
    :goto_1
    return-object v0

    .line 505
    :pswitch_0
    iget-object v2, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mWindow:Landroid/view/Window;

    const v3, 0x10203e1

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 506
    goto :goto_0

    .line 511
    :pswitch_1
    iget-object v2, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mWindow:Landroid/view/Window;

    const v3, 0x10203e2

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 512
    goto :goto_0

    .line 517
    :pswitch_2
    iget-object v2, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mWindow:Landroid/view/Window;

    const v3, 0x10203e3

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 530
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 501
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getSharePreference(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 1020
    const-string v1, "quick_window"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1022
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "whether_clear"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private layoutInScreen()V
    .locals 5

    .prologue
    .line 846
    iget-boolean v3, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mShowing:Z

    if-nez v3, :cond_1

    .line 865
    :cond_0
    :goto_0
    return-void

    .line 848
    :cond_1
    iget-object v3, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 849
    .local v1, l:Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 851
    .local v2, originalY:I
    iget-object v3, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mDecor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 853
    .local v0, blockHeight:I
    iget v3, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mRequestedY:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 854
    iget v3, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mRequestedY:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mScreenHeight:I

    if-le v3, v4, :cond_2

    .line 857
    iget v3, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mScreenHeight:I

    sub-int/2addr v3, v0

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 860
    :cond_2
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v2, v3, :cond_0

    .line 863
    iget-object v3, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method private declared-synchronized obtainView()Landroid/view/View;
    .locals 6

    .prologue
    .line 965
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 966
    .local v0, r:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x10900c5

    iget-object v4, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mTrack:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oppo/internal/widget/OppoCheckableImageView;

    .line 967
    .local v1, viewSms:Lcom/oppo/internal/widget/OppoCheckableImageView;
    new-instance v2, Lcom/oppo/internal/app/OppoQuickContactWindow$2;

    invoke-direct {v2, p0}, Lcom/oppo/internal/app/OppoQuickContactWindow$2;-><init>(Lcom/oppo/internal/app/OppoQuickContactWindow;)V

    invoke-virtual {v1, v2}, Lcom/oppo/internal/widget/OppoCheckableImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 978
    const v2, 0x10806ae

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oppo/internal/widget/OppoCheckableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 980
    monitor-exit p0

    return-object v1

    .line 965
    .end local v0           #r:Landroid/content/res/Resources;
    .end local v1           #viewSms:Lcom/oppo/internal/widget/OppoCheckableImageView;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private obtainView(Landroid/content/Intent;Landroid/graphics/drawable/Drawable;I)Lcom/oppo/internal/widget/OppoCheckableImageView;
    .locals 5
    .parameter "intent"
    .parameter "draw"
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 986
    const-string v1, "OppoQuickContactWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    iget-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x10900c5

    iget-object v3, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/internal/widget/OppoCheckableImageView;

    .line 988
    .local v0, view:Lcom/oppo/internal/widget/OppoCheckableImageView;
    invoke-virtual {v0, p2}, Lcom/oppo/internal/widget/OppoCheckableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 989
    invoke-virtual {v0, p3}, Lcom/oppo/internal/widget/OppoCheckableImageView;->setId(I)V

    .line 990
    invoke-virtual {v0, v4}, Lcom/oppo/internal/widget/OppoCheckableImageView;->setChecked(Z)V

    .line 991
    invoke-virtual {v0, p0}, Lcom/oppo/internal/widget/OppoCheckableImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 992
    const/high16 v1, 0x1400

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 993
    invoke-virtual {v0, p1}, Lcom/oppo/internal/widget/OppoCheckableImageView;->setTag(Ljava/lang/Object;)V

    .line 994
    return-object v0
.end method

.method private declared-synchronized releaseView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1003
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mActionPool:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 1004
    iget v0, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mActionRecycled:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mActionRecycled:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1005
    monitor-exit p0

    return-void

    .line 1003
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private resetTrack()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 673
    :goto_0
    iget-object v0, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 675
    iget-object v0, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oppo/internal/app/OppoQuickContactWindow;->releaseView(Landroid/view/View;)V

    .line 676
    iget-object v0, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_0

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mTrackScroll:Landroid/widget/HorizontalScrollView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    .line 684
    return-void
.end method

.method public static setSharePreference(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "value"

    .prologue
    .line 1013
    const-string v1, "quick_window"

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1015
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "whether_clear"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1016
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1017
    return-void
.end method

.method private showArrow(II)V
    .locals 5
    .parameter "whichArrow"
    .parameter "requestedX"

    .prologue
    const v4, 0x10203e8

    .line 769
    if-ne p1, v4, :cond_0

    iget-object v3, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mArrowUp:Landroid/widget/ImageView;

    .line 770
    .local v3, showArrow:Landroid/view/View;
    :goto_0
    if-ne p1, v4, :cond_1

    iget-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mArrowDown:Landroid/widget/ImageView;

    .line 772
    .local v1, hideArrow:Landroid/view/View;
    :goto_1
    iget-object v4, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mArrowUp:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    .line 774
    .local v0, arrowWidth:I
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 775
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 776
    .local v2, param:Landroid/view/ViewGroup$MarginLayoutParams;
    div-int/lit8 v4, v0, 0x2

    sub-int v4, p2, v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 778
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 779
    return-void

    .line 769
    .end local v0           #arrowWidth:I
    .end local v1           #hideArrow:Landroid/view/View;
    .end local v2           #param:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v3           #showArrow:Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mArrowDown:Landroid/widget/ImageView;

    goto :goto_0

    .line 770
    .restart local v3       #showArrow:Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mArrowUp:Landroid/widget/ImageView;

    goto :goto_1
.end method

.method private showInternal()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 714
    iget-object v2, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mDecor:Landroid/view/View;

    .line 715
    iget-object v2, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mDecor:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 716
    iget-object v2, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 718
    .local v1, l:Landroid/view/WindowManager$LayoutParams;
    iget v2, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mScreenWidth:I

    iget v3, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mShadowHoriz:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mShadowHoriz:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 719
    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 722
    iget-object v2, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mDecor:Landroid/view/View;

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 723
    iget-object v2, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mDecor:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 725
    .local v0, blockHeight:I
    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 726
    iget v2, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mShadowHoriz:I

    neg-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 728
    iget-object v2, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mAnchor:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v2, v0, :cond_0

    .line 732
    const v2, 0x10203e9

    iget-object v3, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mAnchor:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/oppo/internal/app/OppoQuickContactWindow;->showArrow(II)V

    .line 733
    iget-object v2, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mAnchor:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mShadowVert:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 734
    const v2, 0x10302a6

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 746
    :goto_0
    const/16 v2, 0x300

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 749
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v2, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mRequestedY:I

    .line 750
    iget-object v2, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mDecor:Landroid/view/View;

    invoke-interface {v2, v3, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 751
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mShowing:Z

    .line 752
    iput-boolean v5, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mQuerying:Z

    .line 753
    iput-boolean v5, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mDismissed:Z

    .line 755
    iget-object v2, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mTrack:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mTrackAnim:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 759
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 761
    return-void

    .line 741
    :cond_0
    const v2, 0x10203e8

    iget-object v3, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mAnchor:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/oppo/internal/app/OppoQuickContactWindow;->showArrow(II)V

    .line 742
    iget-object v2, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mAnchor:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mShadowVert:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 743
    const v2, 0x10302a7

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_0
.end method


# virtual methods
.method protected detectEventOutside(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 825
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 828
    iget-object v2, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mDecor:Landroid/view/View;

    iget-object v3, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 829
    iget-object v2, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mShadowTouch:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 830
    iget-object v2, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mShadowTouch:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 831
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 832
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 833
    .local v1, y:I
    iget-object v2, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 835
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 838
    .end local v0           #x:I
    .end local v1           #y:I
    :cond_0
    return-void
.end method

.method public declared-synchronized dismiss()V
    .locals 2

    .prologue
    .line 787
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mDismissListener:Lcom/oppo/internal/app/OppoQuickContactWindow$OnDismissListener;

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mDismissListener:Lcom/oppo/internal/app/OppoQuickContactWindow$OnDismissListener;

    invoke-interface {v0, p0}, Lcom/oppo/internal/app/OppoQuickContactWindow$OnDismissListener;->onDismiss(Lcom/oppo/internal/app/OppoQuickContactWindow;)V

    .line 792
    :cond_0
    invoke-direct {p0}, Lcom/oppo/internal/app/OppoQuickContactWindow;->dismissInternal()V

    .line 794
    iget-boolean v0, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->hasSet:Z

    if-nez v0, :cond_1

    .line 797
    iget-object v0, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oppo/widget/OppoQuickContactBadge;->setReQuery(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 799
    :cond_1
    monitor-exit p0

    return-void

    .line 787
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1030
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const/4 v0, 0x1

    .line 138
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mDecor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, p0, v0, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1035
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 152
    invoke-virtual {p0, p1}, Lcom/oppo/internal/app/OppoQuickContactWindow;->detectEventOutside(Landroid/view/MotionEvent;)V

    .line 154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/oppo/internal/app/OppoQuickContactWindow;->dismiss()V

    .line 158
    iput-boolean v0, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->hasSet:Z

    .line 159
    iget-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/oppo/widget/OppoQuickContactBadge;->setReQuery(Landroid/content/Context;Z)V

    .line 165
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 1041
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 1046
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 805
    iget-object v0, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mFooterDisambig:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mDecor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    .line 808
    iget-object v0, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mDecor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 815
    :goto_0
    iget-object v0, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oppo/widget/OppoQuickContactBadge;->setReQuery(Landroid/content/Context;Z)V

    .line 816
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->hasSet:Z

    .line 817
    return-void

    .line 812
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/internal/app/OppoQuickContactWindow;->dismiss()V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 285
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 254
    const-string v0, "OppoQuickContactWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onClick(View v) == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mOnResultListener:Lcom/oppo/internal/app/OppoQuickContactWindow$OnResultListener;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/oppo/internal/app/OppoQuickContactWindow$OnResultListener;->onResult(Lcom/oppo/internal/app/OppoQuickContactWindow;I)V

    .line 273
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 184
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .parameter "featureId"

    .prologue
    .line 195
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method public onGlobalLayout()V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/oppo/internal/app/OppoQuickContactWindow;->layoutInScreen()V

    .line 327
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
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
    .line 279
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 290
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 292
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 293
    const/4 v0, 0x1

    .line 295
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 302
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    .line 309
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 315
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/oppo/internal/app/OppoQuickContactWindow;->onBackPressed()V

    .line 319
    const/4 v0, 0x1

    .line 321
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 220
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "view"
    .parameter "menu"

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 334
    return-void
.end method

.method public onQueryEntitiesComplete(ILjava/lang/Object;Landroid/content/EntityIterator;)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "iterator"

    .prologue
    .line 341
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .parameter "attrs"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mDecor:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 249
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .parameter "callback"

    .prologue
    .line 1050
    const/4 v0, 0x0

    return-object v0
.end method

.method public show(Ljava/lang/String;Landroid/graphics/Rect;I[Ljava/lang/String;J)V
    .locals 2
    .parameter "number"
    .parameter "anchor"
    .parameter "mode"
    .parameter "excludeMimes"
    .parameter "persionId"

    .prologue
    const/4 v1, 0x0

    .line 560
    invoke-direct {p0, p3}, Lcom/oppo/internal/app/OppoQuickContactWindow;->getHeaderView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mHeader:Landroid/view/View;

    .line 569
    invoke-direct {p0}, Lcom/oppo/internal/app/OppoQuickContactWindow;->resetTrack()V

    .line 571
    iput-boolean v1, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mHasValidSocial:Z

    .line 572
    iput-boolean v1, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mDismissed:Z

    .line 573
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mQuerying:Z

    .line 574
    invoke-direct {p0, p5, p6}, Lcom/oppo/internal/app/OppoQuickContactWindow;->addView(J)V

    .line 575
    invoke-direct {p0}, Lcom/oppo/internal/app/OppoQuickContactWindow;->considerShowing()V

    .line 576
    return-void
.end method

.method public show(Ljava/util/ArrayList;Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "rect"
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent$ShortcutIconResource;",
            ">;",
            "Landroid/graphics/Rect;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, drawableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent$ShortcutIconResource;>;"
    const/4 v1, 0x0

    .line 595
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mAnchor:Landroid/graphics/Rect;

    .line 596
    const/4 v0, 0x2

    iput v0, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mMode:I

    .line 597
    iget v0, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mMode:I

    invoke-direct {p0, v0}, Lcom/oppo/internal/app/OppoQuickContactWindow;->getHeaderView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mHeader:Landroid/view/View;

    .line 598
    invoke-direct {p0}, Lcom/oppo/internal/app/OppoQuickContactWindow;->resetTrack()V

    .line 600
    iput-boolean v1, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mHasValidSocial:Z

    .line 601
    iput-boolean v1, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mDismissed:Z

    .line 602
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mQuerying:Z

    .line 603
    invoke-direct {p0, p1, p3}, Lcom/oppo/internal/app/OppoQuickContactWindow;->addView(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 604
    invoke-direct {p0}, Lcom/oppo/internal/app/OppoQuickContactWindow;->considerShowing()V

    .line 605
    return-void
.end method

.method public show([ILandroid/graphics/Rect;)V
    .locals 2
    .parameter "intentValues"
    .parameter "rect"

    .prologue
    const/4 v1, 0x0

    .line 581
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mAnchor:Landroid/graphics/Rect;

    .line 582
    const/4 v0, 0x2

    iput v0, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mMode:I

    .line 583
    iget v0, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mMode:I

    invoke-direct {p0, v0}, Lcom/oppo/internal/app/OppoQuickContactWindow;->getHeaderView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mHeader:Landroid/view/View;

    .line 584
    invoke-direct {p0}, Lcom/oppo/internal/app/OppoQuickContactWindow;->resetTrack()V

    .line 586
    iput-boolean v1, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mHasValidSocial:Z

    .line 587
    iput-boolean v1, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mDismissed:Z

    .line 588
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/internal/app/OppoQuickContactWindow;->mQuerying:Z

    .line 589
    invoke-direct {p0, p1}, Lcom/oppo/internal/app/OppoQuickContactWindow;->addView([I)V

    .line 590
    invoke-direct {p0}, Lcom/oppo/internal/app/OppoQuickContactWindow;->considerShowing()V

    .line 591
    return-void
.end method
