.class public Landroid/appwidget/AppWidgetHostView;
.super Landroid/widget/FrameLayout;
.source "AppWidgetHostView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;,
        Landroid/appwidget/AppWidgetHostView$OnWidgetStateChangeListener;,
        Landroid/appwidget/AppWidgetHostView$OnWidgetControlListener;,
        Landroid/appwidget/AppWidgetHostView$OnScreenChangedListener;
    }
.end annotation


# static fields
.field public static final COMMAND_GETWIDGET_BITMAP:I = 0x1

.field public static final COMMAND_LAUNCHER_ADDWIDGET:I = 0x4

.field public static final COMMAND_LAUNCHER_CLOSE_FOLDER:I = 0x12

.field public static final COMMAND_LAUNCHER_ENTER_MINI_STATE:I = 0x6

.field public static final COMMAND_LAUNCHER_EXIT_MINI_STATE:I = 0x7

.field public static final COMMAND_LAUNCHER_HIDE_3D_PREVIEW:I = 0x10

.field public static final COMMAND_LAUNCHER_HIDE_ALLAPPS:I = 0xe

.field public static final COMMAND_LAUNCHER_LONGCLICK_WIDGET:I = 0xa

.field public static final COMMAND_LAUNCHER_OPEN_FOLDER:I = 0x11

.field public static final COMMAND_LAUNCHER_PAUSE:I = 0xb

.field public static final COMMAND_LAUNCHER_RESUME:I = 0xc

.field public static final COMMAND_LAUNCHER_SCREENCHANGE_BEGIN:I = 0x8

.field public static final COMMAND_LAUNCHER_SCREENCHANGE_END:I = 0x9

.field public static final COMMAND_LAUNCHER_SHOW_3D_PREVIEW:I = 0xf

.field public static final COMMAND_LAUNCHER_SHOW_ALLAPPS:I = 0xd

.field public static final COMMAND_LAUNCHER_UPDATEWIDGET_POS:I = 0x5

.field public static final COMMAND_RECYCLEWIDGET_BITMAP:I = 0x2

.field public static final COMMAND_WIDGET_IS3DMODE:I = 0x3

.field static final CROSSFADE:Z = false

.field static final FADE_DURATION:I = 0x3e8

.field public static final LAUNCHER_STATUS_3DPREVIEW_SHOWING:I = 0x6

.field public static final LAUNCHER_STATUS_ALLAPPS:I = 0x2

.field public static final LAUNCHER_STATUS_FOLDER_SHOWING:I = 0x5

.field public static final LAUNCHER_STATUS_MINI:I = 0x4

.field public static final LAUNCHER_STATUS_UNKOWN:I = 0x1

.field public static final LAUNCHER_STATUS_WORKSPACE:I = 0x3

.field static final LOGD:Z = true

.field static final TAG:Ljava/lang/String; = "AppWidgetHostView"

.field static final VIEW_MODE_CONTENT:I = 0x1

.field static final VIEW_MODE_DEFAULT:I = 0x3

.field static final VIEW_MODE_ERROR:I = 0x2

.field static final VIEW_MODE_NOINIT:I

.field static final sInflaterFilter:Landroid/view/LayoutInflater$Filter;


# instance fields
.field mAppWidgetId:I

.field mContext:Landroid/content/Context;

.field mFadeStartTime:J

.field mInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field mLayoutId:I

.field mOld:Landroid/graphics/Bitmap;

.field mOldPaint:Landroid/graphics/Paint;

.field protected mOnScreenChangedListener:Landroid/appwidget/AppWidgetHostView$OnScreenChangedListener;

.field protected mOnWidgetControlListener:Landroid/appwidget/AppWidgetHostView$OnWidgetControlListener;

.field protected mOnWidgetStateChangeListener:Landroid/appwidget/AppWidgetHostView$OnWidgetStateChangeListener;

.field mRemoteContext:Landroid/content/Context;

.field mView:Landroid/view/View;

.field mViewMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Landroid/appwidget/AppWidgetHostView$1;

    invoke-direct {v0}, Landroid/appwidget/AppWidgetHostView$1;-><init>()V

    sput-object v0, Landroid/appwidget/AppWidgetHostView;->sInflaterFilter:Landroid/view/LayoutInflater$Filter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 231
    const/high16 v0, 0x10a

    const v1, 0x10a0001

    invoke-direct {p0, p1, v0, v1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;II)V

    .line 232
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .parameter "context"
    .parameter "animationIn"
    .parameter "animationOut"

    .prologue
    .line 243
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Landroid/appwidget/AppWidgetHostView;->mLayoutId:I

    .line 81
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/appwidget/AppWidgetHostView;->mFadeStartTime:J

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mOldPaint:Landroid/graphics/Paint;

    .line 244
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    .line 248
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->setIsRootNamespace(Z)V

    .line 249
    return-void
.end method

.method private generateId()I
    .locals 2

    .prologue
    .line 333
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getId()I

    move-result v0

    .line 334
    .local v0, id:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    .end local v0           #id:I
    :cond_0
    return v0
.end method

.method public static getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6
    .parameter "context"
    .parameter "component"
    .parameter "padding"

    .prologue
    const/4 v4, 0x0

    .line 287
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 290
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    if-nez p2, :cond_1

    .line 291
    new-instance p2, Landroid/graphics/Rect;

    .end local p2
    invoke-direct {p2, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 297
    .restart local p2
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 303
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_0

    .line 304
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 305
    .local v3, r:Landroid/content/res/Resources;
    const v4, 0x105004d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p2, Landroid/graphics/Rect;->left:I

    .line 307
    const v4, 0x105004f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p2, Landroid/graphics/Rect;->right:I

    .line 309
    const v4, 0x105004e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p2, Landroid/graphics/Rect;->top:I

    .line 311
    const v4, 0x1050050

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p2, Landroid/graphics/Rect;->bottom:I

    .line 314
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v3           #r:Landroid/content/res/Resources;
    :cond_0
    :goto_1
    return-object p2

    .line 293
    :cond_1
    invoke-virtual {p2, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 298
    :catch_0
    move-exception v1

    .line 300
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1
.end method

.method private getRemoteContext(Landroid/widget/RemoteViews;)Landroid/content/Context;
    .locals 5
    .parameter "views"

    .prologue
    .line 501
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 502
    .local v1, packageName:Ljava/lang/String;
    if-nez v1, :cond_0

    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    .line 523
    :goto_0
    return-object v2

    .line 514
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    const/4 v3, 0x3

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 521
    :catch_0
    move-exception v0

    .line 522
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "AppWidgetHostView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    goto :goto_0
.end method


# virtual methods
.method public command(I[ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "action"
    .parameter "params"
    .parameter "obj"

    .prologue
    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, reobj:Ljava/lang/Object;
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mOnWidgetStateChangeListener:Landroid/appwidget/AppWidgetHostView$OnWidgetStateChangeListener;

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mOnWidgetStateChangeListener:Landroid/appwidget/AppWidgetHostView$OnWidgetStateChangeListener;

    invoke-interface {v1, p1, p2, p3}, Landroid/appwidget/AppWidgetHostView$OnWidgetStateChangeListener;->command(I[ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 223
    .end local v0           #reobj:Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 339
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->generateId()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    .line 341
    .local v1, parcelable:Landroid/os/Parcelable;
    const/4 v0, 0x0

    .line 342
    .local v0, jail:Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 343
    check-cast v0, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;

    .line 346
    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;

    .end local v0           #jail:Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;-><init>(Landroid/appwidget/AppWidgetHostView$1;)V

    .line 348
    .restart local v0       #jail:Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;
    :cond_1
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 349
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 327
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    new-instance v0, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;-><init>(Landroid/appwidget/AppWidgetHostView$1;)V

    .line 328
    .local v0, jail:Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 329
    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->generateId()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 330
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 562
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 357
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    .line 358
    .local v0, context:Landroid/content/Context;
    :goto_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v1

    .line 357
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public getAppWidgetId()I
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    return v0
.end method

.method public getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    return-object v0
.end method

.method protected getDefaultView()Landroid/view/View;
    .locals 8

    .prologue
    .line 587
    const-string v5, "AppWidgetHostView"

    const-string v6, "getDefaultView"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const/4 v0, 0x0

    .line 590
    .local v0, defaultView:Landroid/view/View;
    const/4 v2, 0x0

    .line 593
    .local v2, exception:Ljava/lang/Exception;
    :try_start_0
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v5, :cond_2

    .line 604
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v6, v6, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .line 614
    .local v4, theirContext:Landroid/content/Context;
    iput-object v4, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    .line 615
    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 617
    .local v3, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {v3, v4}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 626
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    const/4 v6, 0x0

    invoke-virtual {v3, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 636
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .end local v4           #theirContext:Landroid/content/Context;
    :goto_0
    if-eqz v2, :cond_0

    .line 637
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 638
    const-string v5, "AppWidgetHostView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error inflating AppWidget "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_0
    if-nez v0, :cond_1

    .line 642
    const-string v5, "AppWidgetHostView"

    const-string v6, "getDefaultView couldn\'t find any view, so inflating error"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getErrorView()Landroid/view/View;

    move-result-object v0

    .line 646
    :cond_1
    return-object v0

    .line 628
    :cond_2
    :try_start_1
    const-string v5, "AppWidgetHostView"

    const-string v6, "can\'t inflate defaultView because mInfo is missing"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 630
    :catch_0
    move-exception v1

    .line 631
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v2, v1

    .line 634
    goto :goto_0

    .line 632
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 633
    .local v1, e:Ljava/lang/RuntimeException;
    move-object v2, v1

    goto :goto_0
.end method

.method protected getErrorView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 653
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 654
    .local v0, tv:Landroid/widget/TextView;
    const v1, 0x104043d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 656
    const/16 v1, 0x7f

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 657
    return-object v0
.end method

.method public getLauncherStatus()I
    .locals 1

    .prologue
    .line 164
    const/4 v0, -0x1

    return v0
.end method

.method public launcherIsPause()Z
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public onHomeResume(I)V
    .locals 1
    .parameter "screenNo"

    .prologue
    .line 117
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mOnScreenChangedListener:Landroid/appwidget/AppWidgetHostView$OnScreenChangedListener;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mOnScreenChangedListener:Landroid/appwidget/AppWidgetHostView$OnScreenChangedListener;

    invoke-interface {v0, p1}, Landroid/appwidget/AppWidgetHostView$OnScreenChangedListener;->onHomeResume(I)V

    .line 121
    :cond_0
    return-void
.end method

.method public onScreenChangedEnd(II)V
    .locals 1
    .parameter "oldScreenNo"
    .parameter "newScreenNo"

    .prologue
    .line 109
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mOnScreenChangedListener:Landroid/appwidget/AppWidgetHostView$OnScreenChangedListener;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mOnScreenChangedListener:Landroid/appwidget/AppWidgetHostView$OnScreenChangedListener;

    invoke-interface {v0, p1, p2}, Landroid/appwidget/AppWidgetHostView$OnScreenChangedListener;->onScreenChangedEnd(II)V

    .line 113
    :cond_0
    return-void
.end method

.method public onScreenChangedStart(I)V
    .locals 1
    .parameter "screenNo"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mOnScreenChangedListener:Landroid/appwidget/AppWidgetHostView$OnScreenChangedListener;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mOnScreenChangedListener:Landroid/appwidget/AppWidgetHostView$OnScreenChangedListener;

    invoke-interface {v0, p1}, Landroid/appwidget/AppWidgetHostView$OnScreenChangedListener;->onScreenChangedStart(I)V

    .line 105
    :cond_0
    return-void
.end method

.method public onStartRefresh()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mOnWidgetControlListener:Landroid/appwidget/AppWidgetHostView$OnWidgetControlListener;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mOnWidgetControlListener:Landroid/appwidget/AppWidgetHostView$OnWidgetControlListener;

    invoke-interface {v0}, Landroid/appwidget/AppWidgetHostView$OnWidgetControlListener;->onStartRefresh()V

    .line 159
    :cond_0
    return-void
.end method

.method public onStopAnimation()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mOnWidgetControlListener:Landroid/appwidget/AppWidgetHostView$OnWidgetControlListener;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mOnWidgetControlListener:Landroid/appwidget/AppWidgetHostView$OnWidgetControlListener;

    invoke-interface {v0}, Landroid/appwidget/AppWidgetHostView$OnWidgetControlListener;->onStopAnimation()V

    .line 143
    :cond_0
    return-void
.end method

.method public onStopRefresh()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mOnWidgetControlListener:Landroid/appwidget/AppWidgetHostView$OnWidgetControlListener;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mOnWidgetControlListener:Landroid/appwidget/AppWidgetHostView$OnWidgetControlListener;

    invoke-interface {v0}, Landroid/appwidget/AppWidgetHostView$OnWidgetControlListener;->onStopRefresh()V

    .line 151
    :cond_0
    return-void
.end method

.method protected prepareView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    const/4 v1, -0x1

    .line 572
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 573
    .local v0, requested:Landroid/widget/FrameLayout$LayoutParams;
    if-nez v0, :cond_0

    .line 574
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0           #requested:Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 578
    .restart local v0       #requested:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 579
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 580
    return-void
.end method

.method resetAppWidget(Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 366
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 367
    const/4 v0, 0x0

    iput v0, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    .line 368
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 369
    return-void
.end method

.method public setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 5
    .parameter "appWidgetId"
    .parameter "info"

    .prologue
    .line 257
    iput p1, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    .line 258
    iput-object p2, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 262
    if-eqz p2, :cond_0

    .line 264
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 265
    .local v0, padding:Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    .line 267
    .end local v0           #padding:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public setOnScreenChangedListener(Landroid/appwidget/AppWidgetHostView$OnScreenChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 96
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mOnScreenChangedListener:Landroid/appwidget/AppWidgetHostView$OnScreenChangedListener;

    .line 97
    return-void
.end method

.method public setOnWidgetControlListener(Landroid/appwidget/AppWidgetHostView$OnWidgetControlListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 134
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mOnWidgetControlListener:Landroid/appwidget/AppWidgetHostView$OnWidgetControlListener;

    .line 135
    return-void
.end method

.method public setOnWidgetStateChangeListener(Landroid/appwidget/AppWidgetHostView$OnWidgetStateChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 215
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mOnWidgetStateChangeListener:Landroid/appwidget/AppWidgetHostView$OnWidgetStateChangeListener;

    .line 216
    return-void
.end method

.method public updateAppWidget(Landroid/widget/RemoteViews;)V
    .locals 10
    .parameter "remoteViews"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    .line 376
    const-string v5, "AppWidgetHostView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateAppWidget called mOld="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/appwidget/AppWidgetHostView;->mOld:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const/4 v4, 0x0

    .line 379
    .local v4, recycled:Z
    const/4 v0, 0x0

    .line 380
    .local v0, content:Landroid/view/View;
    const/4 v2, 0x0

    .line 401
    .local v2, exception:Ljava/lang/Exception;
    if-nez p1, :cond_4

    .line 402
    iget v5, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    if-ne v5, v9, :cond_1

    .line 404
    const-string v5, "AppWidgetHostView"

    const-string v6, "  mViewMode == VIEW_MODE_DEFAULT "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getDefaultView()Landroid/view/View;

    move-result-object v0

    .line 408
    const/4 v5, -0x1

    iput v5, p0, Landroid/appwidget/AppWidgetHostView;->mLayoutId:I

    .line 409
    iput v9, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    .line 443
    :goto_1
    if-nez v0, :cond_2

    .line 444
    iget v5, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    if-eq v5, v8, :cond_0

    .line 448
    const-string v5, "AppWidgetHostView"

    const-string/jumbo v6, "updateAppWidget couldn\'t find any view, using error view"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 449
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getErrorView()Landroid/view/View;

    move-result-object v0

    .line 450
    iput v8, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    .line 453
    :cond_2
    if-nez v4, :cond_3

    .line 454
    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->prepareView(Landroid/view/View;)V

    .line 455
    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->addView(Landroid/view/View;)V

    .line 458
    :cond_3
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    if-eq v5, v0, :cond_0

    .line 459
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    invoke-virtual {p0, v5}, Landroid/appwidget/AppWidgetHostView;->removeView(Landroid/view/View;)V

    .line 460
    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    goto :goto_0

    .line 413
    :cond_4
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;->getRemoteContext(Landroid/widget/RemoteViews;)Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    .line 414
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    .line 418
    .local v3, layoutId:I
    if-nez v0, :cond_5

    iget v5, p0, Landroid/appwidget/AppWidgetHostView;->mLayoutId:I

    if-ne v3, v5, :cond_5

    .line 420
    :try_start_0
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    invoke-virtual {p1, v5, v6}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    .line 421
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    .line 422
    const/4 v4, 0x1

    .line 423
    const-string v5, "AppWidgetHostView"

    const-string/jumbo v6, "was able to recycled existing layout"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    :cond_5
    :goto_2
    if-nez v0, :cond_6

    .line 432
    :try_start_1
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5, p0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 433
    const-string v5, "AppWidgetHostView"

    const-string v6, "had to inflate new layout"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 439
    :cond_6
    :goto_3
    iput v3, p0, Landroid/appwidget/AppWidgetHostView;->mLayoutId:I

    .line 440
    const/4 v5, 0x1

    iput v5, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    goto :goto_1

    .line 424
    :catch_0
    move-exception v1

    .line 425
    .local v1, e:Ljava/lang/RuntimeException;
    move-object v2, v1

    goto :goto_2

    .line 434
    .end local v1           #e:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 435
    .restart local v1       #e:Ljava/lang/RuntimeException;
    move-object v2, v1

    goto :goto_3
.end method

.method viewDataChanged(I)V
    .locals 5
    .parameter "viewId"

    .prologue
    .line 479
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 480
    .local v3, v:Landroid/view/View;
    if-eqz v3, :cond_0

    instance-of v4, v3, Landroid/widget/AdapterView;

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 481
    check-cast v1, Landroid/widget/AdapterView;

    .line 482
    .local v1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 483
    .local v0, adapter:Landroid/widget/Adapter;
    instance-of v4, v0, Landroid/widget/BaseAdapter;

    if-eqz v4, :cond_1

    move-object v2, v0

    .line 484
    check-cast v2, Landroid/widget/BaseAdapter;

    .line 485
    .local v2, baseAdapter:Landroid/widget/BaseAdapter;
    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 493
    .end local v0           #adapter:Landroid/widget/Adapter;
    .end local v1           #adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    .end local v2           #baseAdapter:Landroid/widget/BaseAdapter;
    :cond_0
    :goto_0
    return-void

    .line 486
    .restart local v0       #adapter:Landroid/widget/Adapter;
    .restart local v1       #adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    :cond_1
    if-nez v0, :cond_0

    instance-of v4, v1, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    if-eqz v4, :cond_0

    .line 490
    check-cast v1, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    .end local v1           #adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-interface {v1}, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;->deferNotifyDataSetChanged()V

    goto :goto_0
.end method
