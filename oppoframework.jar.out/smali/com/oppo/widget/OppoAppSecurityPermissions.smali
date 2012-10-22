.class public Lcom/oppo/widget/OppoAppSecurityPermissions;
.super Ljava/lang/Object;
.source "OppoAppSecurityPermissions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoAppSecurityPermissions$4;,
        Lcom/oppo/widget/OppoAppSecurityPermissions$PermissionInfoComparator;,
        Lcom/oppo/widget/OppoAppSecurityPermissions$State;
    }
.end annotation


# static fields
.field private static final INSTALL_APK:I = 0x0

.field private static final MANAGER_APK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OppoAppSecurityPermissions"

.field private static mPm:Landroid/content/pm/PackageManager;

.field static mRes:Landroid/content/res/Resources;

.field private static mType:I

.field private static sPackageManager:Landroid/content/pm/IPackageManager;


# instance fields
.field private localLOGV:Z

.field mActivity:Landroid/app/Activity;

.field private mConfirmDialog:Landroid/app/Dialog;

.field private mContext:Landroid/content/Context;

.field private mCurrentState:Lcom/oppo/widget/OppoAppSecurityPermissions$State;

.field private mDangerousIcon:Landroid/graphics/drawable/Drawable;

.field private mDangerousList:Landroid/widget/LinearLayout;

.field private mDangerousMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultGrpLabel:Ljava/lang/String;

.field private mDefaultGrpName:Ljava/lang/String;

.field mDisabledPermInfoStrList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mEnabledPermInfoStrList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExpanded:Z

.field private mGroupLabelCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mModify:Landroid/view/View;

.field private mModifyButton:Landroid/widget/Button;

.field private mModifyIcon:Landroid/graphics/drawable/Drawable;

.field private mNoPermsView:Landroid/view/View;

.field private mNonDangerousList:Landroid/widget/LinearLayout;

.field private mNormalIcon:Landroid/graphics/drawable/Drawable;

.field private mNormalMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;

.field private mPermFormat:Ljava/lang/String;

.field private mPermsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPermsView:Landroid/widget/LinearLayout;

.field private mShowMaxIcon:Landroid/graphics/drawable/Drawable;

.field private mShowMinIcon:Landroid/graphics/drawable/Drawable;

.field private mShowModifyIcon:Landroid/widget/ImageView;

.field private mShowMore:Landroid/view/View;

.field private mShowMoreIcon:Landroid/widget/ImageView;

.field private mShowMoreText:Landroid/widget/TextView;

.field private oldPerGrpSet:Ljava/util/HashSet;

.field private perGrpSet:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    sput-object v1, Lcom/oppo/widget/OppoAppSecurityPermissions;->sPackageManager:Landroid/content/pm/IPackageManager;

    .line 90
    const/4 v0, 0x0

    sput v0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mType:I

    .line 91
    sput-object v1, Lcom/oppo/widget/OppoAppSecurityPermissions;->mRes:Landroid/content/res/Resources;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/pm/PackageParser$Package;)V
    .locals 12
    .parameter "activity"
    .parameter "pkg"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 146
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean v10, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->localLOGV:Z

    .line 66
    const-string v9, "DefaultGrp"

    iput-object v9, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mDefaultGrpName:Ljava/lang/String;

    .line 81
    iput-object v11, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mPackageName:Ljava/lang/String;

    .line 83
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mEnabledPermInfoStrList:Ljava/util/List;

    .line 84
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mDisabledPermInfoStrList:Ljava/util/List;

    .line 85
    iput-object v11, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mActivity:Landroid/app/Activity;

    .line 99
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    iput-object v9, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->perGrpSet:Ljava/util/HashSet;

    .line 100
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    iput-object v9, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->oldPerGrpSet:Ljava/util/HashSet;

    .line 147
    iput-object p1, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mContext:Landroid/content/Context;

    .line 148
    iput-object p1, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mActivity:Landroid/app/Activity;

    .line 149
    iget-object v9, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    sput-object v9, Lcom/oppo/widget/OppoAppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    .line 150
    sput v10, Lcom/oppo/widget/OppoAppSecurityPermissions;->mType:I

    .line 151
    iget-object v9, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v9, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mPackageName:Ljava/lang/String;

    .line 152
    const-string v9, "package"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 153
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v9

    sput-object v9, Lcom/oppo/widget/OppoAppSecurityPermissions;->sPackageManager:Landroid/content/pm/IPackageManager;

    .line 154
    iget-object v9, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mContext:Landroid/content/Context;

    const v10, 0x1040405

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mDefaultGrpLabel:Ljava/lang/String;

    .line 156
    :try_start_0
    sget-object v9, Lcom/oppo/widget/OppoAppSecurityPermissions;->sPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v10, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mPackageName:Ljava/lang/String;

    invoke-interface {v9, v10}, Landroid/content/pm/IPackageManager;->getDisabledPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/oppo/widget/OppoAppSecurityPermissions;->transformPerToGrp(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    iget-object v9, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sput-object v9, Lcom/oppo/widget/OppoAppSecurityPermissions;->mRes:Landroid/content/res/Resources;

    .line 163
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mPermsList:Ljava/util/List;

    .line 164
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 165
    .local v4, permSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/pm/PermissionInfo;>;"
    if-nez p2, :cond_1

    .line 190
    :cond_0
    return-void

    .line 157
    .end local v4           #permSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/pm/PermissionInfo;>;"
    :catch_0
    move-exception v2

    .line 158
    .local v2, ex:Landroid/os/RemoteException;
    const-string v9, "OppoAppSecurityPermissions"

    const-string v10, "RemoteException in modifyPermission!"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 169
    .end local v2           #ex:Landroid/os/RemoteException;
    .restart local v4       #permSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/pm/PermissionInfo;>;"
    :cond_1
    iget-object v9, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-eqz v9, :cond_2

    .line 170
    iget-object v7, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 171
    .local v7, strList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 172
    .local v6, size:I
    if-lez v6, :cond_2

    .line 173
    new-array v9, v6, [Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-direct {p0, v9, v4}, Lcom/oppo/widget/OppoAppSecurityPermissions;->extractPerms([Ljava/lang/String;Ljava/util/Set;)V

    .line 177
    .end local v6           #size:I
    .end local v7           #strList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    iget-object v9, p2, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    if-eqz v9, :cond_3

    .line 180
    :try_start_1
    sget-object v9, Lcom/oppo/widget/OppoAppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    iget-object v10, p2, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getUidForSharedUser(Ljava/lang/String;)I

    move-result v5

    .line 181
    .local v5, sharedUid:I
    invoke-direct {p0, v5, v4}, Lcom/oppo/widget/OppoAppSecurityPermissions;->getAllUsedPermissions(ILjava/util/Set;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 187
    .end local v5           #sharedUid:I
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PermissionInfo;

    .line 188
    .local v8, tmpInfo:Landroid/content/pm/PermissionInfo;
    iget-object v9, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mPermsList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 182
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v8           #tmpInfo:Landroid/content/pm/PermissionInfo;
    :catch_1
    move-exception v1

    .line 183
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "OppoAppSecurityPermissions"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could\'nt retrieve shared user id for:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 10
    .parameter "activity"
    .parameter "packageName"

    .prologue
    const/4 v8, 0x0

    .line 111
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->localLOGV:Z

    .line 66
    const-string v7, "DefaultGrp"

    iput-object v7, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mDefaultGrpName:Ljava/lang/String;

    .line 81
    iput-object v8, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mPackageName:Ljava/lang/String;

    .line 83
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mEnabledPermInfoStrList:Ljava/util/List;

    .line 84
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mDisabledPermInfoStrList:Ljava/util/List;

    .line 85
    iput-object v8, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mActivity:Landroid/app/Activity;

    .line 99
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->perGrpSet:Ljava/util/HashSet;

    .line 100
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->oldPerGrpSet:Ljava/util/HashSet;

    .line 112
    iput-object p1, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mContext:Landroid/content/Context;

    .line 113
    iput-object p1, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mActivity:Landroid/app/Activity;

    .line 114
    iget-object v7, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    sput-object v7, Lcom/oppo/widget/OppoAppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    .line 115
    const/4 v7, 0x1

    sput v7, Lcom/oppo/widget/OppoAppSecurityPermissions;->mType:I

    .line 116
    iput-object p2, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mPackageName:Ljava/lang/String;

    .line 118
    const-string v7, "package"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 119
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v7

    sput-object v7, Lcom/oppo/widget/OppoAppSecurityPermissions;->sPackageManager:Landroid/content/pm/IPackageManager;

    .line 120
    iget-object v7, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mContext:Landroid/content/Context;

    const v8, 0x1040405

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mDefaultGrpLabel:Ljava/lang/String;

    .line 122
    :try_start_0
    sget-object v7, Lcom/oppo/widget/OppoAppSecurityPermissions;->sPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v8, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mPackageName:Ljava/lang/String;

    invoke-interface {v7, v8}, Landroid/content/pm/IPackageManager;->getDisabledPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/oppo/widget/OppoAppSecurityPermissions;->transformPerToGrp(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    iget-object v7, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sput-object v7, Lcom/oppo/widget/OppoAppSecurityPermissions;->mRes:Landroid/content/res/Resources;

    .line 128
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mPermsList:Ljava/util/List;

    .line 129
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 132
    .local v4, permSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/pm/PermissionInfo;>;"
    :try_start_1
    sget-object v7, Lcom/oppo/widget/OppoAppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    const/16 v8, 0x1000

    invoke-virtual {v7, p2, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 138
    .local v5, pkgInfo:Landroid/content/pm/PackageInfo;
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_0

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 139
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v7, v4}, Lcom/oppo/widget/OppoAppSecurityPermissions;->getAllUsedPermissions(ILjava/util/Set;)V

    .line 141
    :cond_0
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PermissionInfo;

    .line 142
    .local v6, tmpInfo:Landroid/content/pm/PermissionInfo;
    iget-object v7, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mPermsList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 123
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #permSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/pm/PermissionInfo;>;"
    .end local v5           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v6           #tmpInfo:Landroid/content/pm/PermissionInfo;
    :catch_0
    move-exception v2

    .line 124
    .local v2, ex:Landroid/os/RemoteException;
    const-string v7, "OppoAppSecurityPermissions"

    const-string v8, "RemoteException in modifyPermission!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    .end local v2           #ex:Landroid/os/RemoteException;
    .restart local v4       #permSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/pm/PermissionInfo;>;"
    :catch_1
    move-exception v1

    .line 134
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "OppoAppSecurityPermissions"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could\'nt retrieve permissions for package:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, permList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    const/4 v1, 0x0

    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->localLOGV:Z

    .line 66
    const-string v0, "DefaultGrp"

    iput-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mDefaultGrpName:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mPackageName:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mEnabledPermInfoStrList:Ljava/util/List;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mDisabledPermInfoStrList:Ljava/util/List;

    .line 85
    iput-object v1, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mActivity:Landroid/app/Activity;

    .line 99
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->perGrpSet:Ljava/util/HashSet;

    .line 100
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->oldPerGrpSet:Ljava/util/HashSet;

    .line 102
    iput-object p1, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mContext:Landroid/content/Context;

    .line 103
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    .line 104
    iput-object p2, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mPermsList:Ljava/util/List;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoAppSecurityPermissions;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->perGrpSet:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oppo/widget/OppoAppSecurityPermissions;Ljava/lang/CharSequence;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoAppSecurityPermissions;->setCheckBox(Ljava/lang/CharSequence;ZZ)V

    return-void
.end method

.method private aggregateGroupDescs(Ljava/util/Map;Ljava/util/Map;)V
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 570
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/PermissionInfo;>;>;"
    .local p2, retMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 595
    :cond_0
    return-void

    .line 573
    :cond_1
    if-eqz p2, :cond_0

    .line 576
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 577
    .local v2, grpNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 578
    .local v3, grpNamesIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 579
    const/4 v0, 0x0

    .line 580
    .local v0, grpDesc:Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 581
    .local v1, grpNameKey:Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 582
    .local v4, grpPermsList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    if-eqz v4, :cond_2

    .line 585
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PermissionInfo;

    .line 586
    .local v7, permInfo:Landroid/content/pm/PermissionInfo;
    sget-object v8, Lcom/oppo/widget/OppoAppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v8}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 587
    .local v6, permDesc:Ljava/lang/CharSequence;
    invoke-direct {p0, v0, v6}, Lcom/oppo/widget/OppoAppSecurityPermissions;->formatPermissions(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 588
    goto :goto_1

    .line 590
    .end local v6           #permDesc:Ljava/lang/CharSequence;
    .end local v7           #permInfo:Landroid/content/pm/PermissionInfo;
    :cond_3
    if-eqz v0, :cond_2

    .line 591
    iget-boolean v8, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->localLOGV:Z

    if-eqz v8, :cond_4

    const-string v8, "OppoAppSecurityPermissions"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Group:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " description:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private canonicalizeGroupDesc(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "groupDesc"

    .prologue
    .line 337
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 338
    :cond_0
    const/4 v1, 0x0

    .line 345
    :goto_0
    return-object v1

    .line 341
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 342
    .local v0, len:I
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_2

    .line 343
    const/4 v1, 0x0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2
    move-object v1, p1

    .line 345
    goto :goto_0
.end method

.method private displayNoPermissions()V
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mNoPermsView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 417
    return-void
.end method

.method private displayPermissions(Z)V
    .locals 9
    .parameter "dangerous"

    .prologue
    .line 395
    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mDangerousMap:Ljava/util/Map;

    .line 396
    .local v3, permInfoMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    if-eqz p1, :cond_2

    iget-object v5, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mDangerousList:Landroid/widget/LinearLayout;

    .line 397
    .local v5, permListView:Landroid/widget/LinearLayout;
    :goto_1
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 401
    iget-object v6, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mModifyButton:Landroid/widget/Button;

    const v7, 0x10404fd

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 403
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 404
    .local v4, permInfoStrSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 405
    .local v2, loopPermGrpInfoStr:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/oppo/widget/OppoAppSecurityPermissions;->getGroupLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 408
    .local v0, grpLabel:Ljava/lang/CharSequence;
    iget-boolean v6, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->localLOGV:Z

    if-eqz v6, :cond_0

    const-string v7, "OppoAppSecurityPermissions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Adding view group:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", desc:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_0
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v6, p1}, Lcom/oppo/widget/OppoAppSecurityPermissions;->getPermissionItemView(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 395
    .end local v0           #grpLabel:Ljava/lang/CharSequence;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #loopPermGrpInfoStr:Ljava/lang/String;
    .end local v3           #permInfoMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #permInfoStrSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5           #permListView:Landroid/widget/LinearLayout;
    :cond_1
    iget-object v3, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mNormalMap:Ljava/util/Map;

    goto :goto_0

    .line 396
    .restart local v3       #permInfoMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    iget-object v5, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mNonDangerousList:Landroid/widget/LinearLayout;

    goto :goto_1

    .line 413
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v4       #permInfoStrSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5       #permListView:Landroid/widget/LinearLayout;
    :cond_3
    return-void
.end method

.method private extractPerms([Ljava/lang/String;Ljava/util/Set;)V
    .locals 9
    .parameter "strList"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p2, permSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/pm/PermissionInfo;>;"
    if-eqz p1, :cond_0

    array-length v6, p1

    if-nez v6, :cond_1

    .line 271
    :cond_0
    return-void

    .line 261
    :cond_1
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 263
    .local v4, permName:Ljava/lang/String;
    :try_start_0
    sget-object v6, Lcom/oppo/widget/OppoAppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v5

    .line 264
    .local v5, tmpPermInfo:Landroid/content/pm/PermissionInfo;
    if-eqz v5, :cond_2

    .line 265
    invoke-interface {p2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    .end local v5           #tmpPermInfo:Landroid/content/pm/PermissionInfo;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 267
    :catch_0
    move-exception v1

    .line 268
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "OppoAppSecurityPermissions"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring unknown permission:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private formatPermissions(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .parameter "groupDesc"
    .parameter "permDesc"

    .prologue
    .line 355
    if-nez p1, :cond_1

    .line 356
    if-nez p2, :cond_0

    .line 357
    const/4 v0, 0x0

    .line 366
    :goto_0
    return-object v0

    .line 359
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 361
    :cond_1
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoAppSecurityPermissions;->canonicalizeGroupDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 362
    if-nez p2, :cond_2

    move-object v0, p1

    .line 363
    goto :goto_0

    .line 366
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mPermFormat:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getAllUsedPermissions(ILjava/util/Set;)V
    .locals 6
    .parameter "sharedUid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 234
    .local p2, permSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/pm/PermissionInfo;>;"
    sget-object v5, Lcom/oppo/widget/OppoAppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 235
    .local v4, sharedPkgList:[Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v5, v4

    if-nez v5, :cond_1

    .line 241
    :cond_0
    return-void

    .line 238
    :cond_1
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 239
    .local v3, sharedPkg:Ljava/lang/String;
    invoke-direct {p0, v3, p2}, Lcom/oppo/widget/OppoAppSecurityPermissions;->getPermissionsForPackage(Ljava/lang/String;Ljava/util/Set;)V

    .line 238
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getGroupDisabled(Ljava/lang/String;)Z
    .locals 3
    .parameter "grpName"

    .prologue
    .line 426
    iget-object v2, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->perGrpSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 427
    .local v1, tmpInfo:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 428
    const/4 v2, 0x0

    .line 431
    .end local v1           #tmpInfo:Ljava/lang/Object;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getGroupLabel(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "grpName"

    .prologue
    .line 370
    if-nez p1, :cond_1

    .line 372
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mDefaultGrpLabel:Ljava/lang/String;

    .line 387
    :cond_0
    :goto_0
    return-object v0

    .line 374
    :cond_1
    iget-object v4, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mGroupLabelCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 375
    .local v0, cachedLabel:Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 380
    :try_start_0
    sget-object v4, Lcom/oppo/widget/OppoAppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 385
    .local v3, pgi:Landroid/content/pm/PermissionGroupInfo;
    sget-object v4, Lcom/oppo/widget/OppoAppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 386
    .local v2, label:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mGroupLabelCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 387
    goto :goto_0

    .line 381
    .end local v2           #label:Ljava/lang/CharSequence;
    .end local v3           #pgi:Landroid/content/pm/PermissionGroupInfo;
    :catch_0
    move-exception v1

    .line 382
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "OppoAppSecurityPermissions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid group name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getGrpLabel(Landroid/content/pm/PermissionInfo;)Ljava/lang/String;
    .locals 5
    .parameter "pInfo"

    .prologue
    .line 683
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoAppSecurityPermissions;->isDisplayablePermission(Landroid/content/pm/PermissionInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 684
    const/4 v1, 0x0

    .line 696
    :goto_0
    return-object v1

    .line 686
    :cond_0
    const/4 v1, 0x0

    .line 688
    .local v1, grpNameLable:Ljava/lang/String;
    :try_start_0
    iget-object v2, p1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 689
    iget-object v1, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mDefaultGrpLabel:Ljava/lang/String;

    goto :goto_0

    .line 691
    :cond_1
    sget-object v2, Lcom/oppo/widget/OppoAppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v2

    sget-object v3, Lcom/oppo/widget/OppoAppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 693
    :catch_0
    move-exception v0

    .line 694
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "OppoAppSecurityPermissions"

    const-string v3, "Invalid PermissionInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getPermissionItemView(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 8
    .parameter "context"
    .parameter "inflater"
    .parameter "grpName"
    .parameter "permList"
    .parameter "dangerous"
    .parameter "icon"

    .prologue
    .line 469
    const/4 v3, 0x0

    .line 470
    .local v3, permView:Landroid/view/View;
    if-eqz p5, :cond_2

    const/4 v5, 0x1

    .line 471
    .local v5, type:I
    :goto_0
    const v6, 0x1090029

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 472
    const v6, 0x1020001

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    move-object v0, v6

    check-cast v0, Landroid/widget/CheckBox;

    .line 473
    .local v0, cb:Landroid/widget/CheckBox;
    new-instance v6, Lcom/oppo/widget/OppoAppSecurityPermissions$1;

    invoke-direct {v6, p0, v0, p3, p5}, Lcom/oppo/widget/OppoAppSecurityPermissions$1;-><init>(Lcom/oppo/widget/OppoAppSecurityPermissions;Landroid/widget/CheckBox;Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/oppo/widget/OppoAppSecurityPermissions;->getGroupDisabled(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 487
    iget-object v6, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/oppo/widget/OppoAppSecurityPermissions;->isSystemApp(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 488
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 492
    :cond_0
    const v6, 0x10202af

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 493
    .local v2, permGrpView:Landroid/widget/TextView;
    const v6, 0x10202b0

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 495
    .local v1, permDescView:Landroid/widget/TextView;
    if-eqz p5, :cond_3

    .line 496
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 497
    .local v4, resources:Landroid/content/res/Resources;
    const v6, 0x1060033

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 498
    const v6, 0x1060034

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 507
    :goto_1
    if-nez p5, :cond_1

    const/4 v6, 0x1

    sget v7, Lcom/oppo/widget/OppoAppSecurityPermissions;->mType:I

    if-ne v6, v7, :cond_1

    .line 508
    sget-object v6, Lcom/oppo/widget/OppoAppSecurityPermissions;->mRes:Landroid/content/res/Resources;

    const v7, 0x10600af

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 509
    sget-object v6, Lcom/oppo/widget/OppoAppSecurityPermissions;->mRes:Landroid/content/res/Resources;

    const v7, 0x10600af

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 513
    :cond_1
    if-eqz p3, :cond_4

    .line 514
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    :goto_2
    return-object v3

    .line 470
    .end local v0           #cb:Landroid/widget/CheckBox;
    .end local v1           #permDescView:Landroid/widget/TextView;
    .end local v2           #permGrpView:Landroid/widget/TextView;
    .end local v4           #resources:Landroid/content/res/Resources;
    .end local v5           #type:I
    :cond_2
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 500
    .restart local v0       #cb:Landroid/widget/CheckBox;
    .restart local v1       #permDescView:Landroid/widget/TextView;
    .restart local v2       #permGrpView:Landroid/widget/TextView;
    .restart local v5       #type:I
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 501
    .restart local v4       #resources:Landroid/content/res/Resources;
    const v6, 0x106000b

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 502
    const v6, 0x106000b

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 517
    :cond_4
    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private getPermissionItemView(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/view/View;
    .locals 7
    .parameter "grpName"
    .parameter "permList"
    .parameter "dangerous"

    .prologue
    .line 421
    iget-object v1, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mInflater:Landroid/view/LayoutInflater;

    if-eqz p3, :cond_0

    iget-object v6, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mDangerousIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/oppo/widget/OppoAppSecurityPermissions;->getPermissionItemView(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v6, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mNormalIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private getPermissionsForPackage(Ljava/lang/String;Ljava/util/Set;)V
    .locals 5
    .parameter "packageName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p2, permSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/pm/PermissionInfo;>;"
    :try_start_0
    sget-object v2, Lcom/oppo/widget/OppoAppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    const/16 v3, 0x1000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 252
    .local v1, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 253
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-direct {p0, v2, p2}, Lcom/oppo/widget/OppoAppSecurityPermissions;->extractPerms([Ljava/lang/String;Ljava/util/Set;)V

    .line 255
    .end local v1           #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "OppoAppSecurityPermissions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could\'nt retrieve permissions for package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isDisplayablePermission(Landroid/content/pm/PermissionInfo;)Z
    .locals 2
    .parameter "pInfo"

    .prologue
    const/4 v0, 0x1

    .line 556
    iget v1, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-eq v1, v0, :cond_0

    iget v1, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-nez v1, :cond_1

    .line 560
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSetEqual(Ljava/util/HashSet;Ljava/util/HashSet;)Z
    .locals 5
    .parameter "set1"
    .parameter "set2"

    .prologue
    .line 722
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v3

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 723
    const/4 v0, 0x0

    .line 733
    :cond_0
    return v0

    .line 725
    :cond_1
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 726
    .local v1, ite1:Ljava/util/Iterator;
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 727
    .local v2, ite2:Ljava/util/Iterator;
    const/4 v0, 0x1

    .line 728
    .local v0, isFullEqual:Z
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 729
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 730
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSystemApp(Ljava/lang/String;)Z
    .locals 6
    .parameter "pkgName"

    .prologue
    const/4 v2, 0x0

    .line 796
    :try_start_0
    sget-object v3, Lcom/oppo/widget/OppoAppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    const/16 v4, 0x2000

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 801
    .local v1, pkgInfo:Landroid/content/pm/ApplicationInfo;
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 802
    const/4 v2, 0x1

    .line 804
    .end local v1           #pkgInfo:Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v2

    .line 797
    :catch_0
    move-exception v0

    .line 798
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "OppoAppSecurityPermissions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t find package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setCheckBox(Ljava/lang/CharSequence;ZZ)V
    .locals 11
    .parameter "grpName"
    .parameter "dangerous"
    .parameter "isChecked"

    .prologue
    const/4 v9, 0x1

    .line 435
    iget-boolean v10, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mExpanded:Z

    if-nez v10, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    if-eqz p2, :cond_3

    move v8, v9

    .line 439
    .local v8, type:I
    :goto_1
    const/4 v5, 0x0

    .line 440
    .local v5, layout:Landroid/widget/LinearLayout;
    const/4 v7, 0x0

    .line 441
    .local v7, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eq v8, v9, :cond_4

    .line 442
    iget-object v5, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mDangerousList:Landroid/widget/LinearLayout;

    .line 443
    iget-object v7, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mDangerousMap:Ljava/util/Map;

    .line 449
    :goto_2
    if-eqz v5, :cond_2

    if-nez v7, :cond_5

    .line 450
    :cond_2
    iget-boolean v9, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->localLOGV:Z

    if-eqz v9, :cond_0

    const-string v9, "OppoAppSecurityPermissions"

    const-string v10, "something is null, just return!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 438
    .end local v5           #layout:Landroid/widget/LinearLayout;
    .end local v7           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8           #type:I
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 445
    .restart local v5       #layout:Landroid/widget/LinearLayout;
    .restart local v7       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8       #type:I
    :cond_4
    iget-object v5, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mNonDangerousList:Landroid/widget/LinearLayout;

    .line 446
    iget-object v7, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mNormalMap:Ljava/util/Map;

    goto :goto_2

    .line 454
    :cond_5
    const/4 v3, 0x0

    .line 456
    .local v3, i:I
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 457
    .local v2, grpStrSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 458
    .local v6, loopPermGrpInfoStr:Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/oppo/widget/OppoAppSecurityPermissions;->getGroupLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 459
    .local v1, grpLabel:Ljava/lang/CharSequence;
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 460
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x1020001

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    move-object v0, v9

    check-cast v0, Landroid/widget/CheckBox;

    .line 461
    .local v0, cb:Landroid/widget/CheckBox;
    invoke-virtual {v0, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 463
    .end local v0           #cb:Landroid/widget/CheckBox;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 464
    goto :goto_3
.end method

.method private setPermissions(Ljava/util/List;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 611
    .local p1, permList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mGroupLabelCache:Ljava/util/HashMap;

    .line 613
    iget-object v9, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mGroupLabelCache:Ljava/util/HashMap;

    iget-object v10, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mDefaultGrpName:Ljava/lang/String;

    iget-object v11, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mDefaultGrpLabel:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mDangerousMap:Ljava/util/Map;

    .line 620
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mNormalMap:Ljava/util/Map;

    .line 624
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 626
    .local v0, dangerousMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/PermissionInfo;>;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 628
    .local v5, normalMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/PermissionInfo;>;>;"
    new-instance v7, Lcom/oppo/widget/OppoAppSecurityPermissions$PermissionInfoComparator;

    sget-object v9, Lcom/oppo/widget/OppoAppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-direct {v7, v9}, Lcom/oppo/widget/OppoAppSecurityPermissions$PermissionInfoComparator;-><init>(Landroid/content/pm/PackageManager;)V

    .line 630
    .local v7, permComparator:Lcom/oppo/widget/OppoAppSecurityPermissions$PermissionInfoComparator;
    if-eqz p1, :cond_9

    .line 632
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PermissionInfo;

    .line 633
    .local v6, pInfo:Landroid/content/pm/PermissionInfo;
    iget-boolean v9, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->localLOGV:Z

    if-eqz v9, :cond_1

    const-string v9, "OppoAppSecurityPermissions"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Processing permission:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_1
    invoke-direct {p0, v6}, Lcom/oppo/widget/OppoAppSecurityPermissions;->isDisplayablePermission(Landroid/content/pm/PermissionInfo;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 635
    iget-boolean v9, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->localLOGV:Z

    if-eqz v9, :cond_0

    const-string v9, "OppoAppSecurityPermissions"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is not displayable"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 638
    :cond_2
    iget v9, v6, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    move-object v8, v0

    .line 641
    .local v8, permInfoMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/PermissionInfo;>;>;"
    :goto_1
    iget-object v9, v6, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-nez v9, :cond_5

    iget-object v1, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mDefaultGrpName:Ljava/lang/String;

    .line 642
    .local v1, grpName:Ljava/lang/String;
    :goto_2
    iget-boolean v9, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->localLOGV:Z

    if-eqz v9, :cond_3

    const-string v9, "OppoAppSecurityPermissions"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " belongs to group:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_3
    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 644
    .local v2, grpPermsList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    if-nez v2, :cond_6

    .line 645
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #grpPermsList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 646
    .restart local v2       #grpPermsList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .end local v1           #grpName:Ljava/lang/String;
    .end local v2           #grpPermsList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    .end local v8           #permInfoMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/PermissionInfo;>;>;"
    :cond_4
    move-object v8, v5

    .line 638
    goto :goto_1

    .line 641
    .restart local v8       #permInfoMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/PermissionInfo;>;>;"
    :cond_5
    iget-object v1, v6, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    goto :goto_2

    .line 649
    .restart local v1       #grpName:Ljava/lang/String;
    .restart local v2       #grpPermsList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :cond_6
    invoke-static {v2, v6, v7}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v4

    .line 650
    .local v4, idx:I
    iget-boolean v9, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->localLOGV:Z

    if-eqz v9, :cond_7

    const-string v9, "OppoAppSecurityPermissions"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "idx="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", list.size="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_7
    if-gez v4, :cond_0

    .line 652
    neg-int v9, v4

    add-int/lit8 v4, v9, -0x1

    .line 653
    invoke-interface {v2, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 659
    .end local v1           #grpName:Ljava/lang/String;
    .end local v2           #grpPermsList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    .end local v4           #idx:I
    .end local v6           #pInfo:Landroid/content/pm/PermissionInfo;
    .end local v8           #permInfoMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/PermissionInfo;>;>;"
    :cond_8
    iget-object v9, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mDangerousMap:Ljava/util/Map;

    invoke-direct {p0, v0, v9}, Lcom/oppo/widget/OppoAppSecurityPermissions;->aggregateGroupDescs(Ljava/util/Map;Ljava/util/Map;)V

    .line 660
    iget-object v9, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mNormalMap:Ljava/util/Map;

    invoke-direct {p0, v5, v9}, Lcom/oppo/widget/OppoAppSecurityPermissions;->aggregateGroupDescs(Ljava/util/Map;Ljava/util/Map;)V

    .line 663
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_9
    sget-object v9, Lcom/oppo/widget/OppoAppSecurityPermissions$State;->NO_PERMS:Lcom/oppo/widget/OppoAppSecurityPermissions$State;

    iput-object v9, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mCurrentState:Lcom/oppo/widget/OppoAppSecurityPermissions$State;

    .line 664
    iget-object v9, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mDangerousMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    if-lez v9, :cond_d

    .line 665
    iget-object v9, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mNormalMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    if-lez v9, :cond_c

    sget-object v9, Lcom/oppo/widget/OppoAppSecurityPermissions$State;->BOTH:Lcom/oppo/widget/OppoAppSecurityPermissions$State;

    :goto_3
    iput-object v9, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mCurrentState:Lcom/oppo/widget/OppoAppSecurityPermissions$State;

    .line 669
    :cond_a
    :goto_4
    iget-boolean v9, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->localLOGV:Z

    if-eqz v9, :cond_b

    const-string v9, "OppoAppSecurityPermissions"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mCurrentState="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mCurrentState:Lcom/oppo/widget/OppoAppSecurityPermissions$State;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :cond_b
    invoke-direct {p0}, Lcom/oppo/widget/OppoAppSecurityPermissions;->showPermissions()V

    .line 671
    return-void

    .line 665
    :cond_c
    sget-object v9, Lcom/oppo/widget/OppoAppSecurityPermissions$State;->DANGEROUS_ONLY:Lcom/oppo/widget/OppoAppSecurityPermissions$State;

    goto :goto_3

    .line 666
    :cond_d
    iget-object v9, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mNormalMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    if-lez v9, :cond_a

    .line 667
    sget-object v9, Lcom/oppo/widget/OppoAppSecurityPermissions$State;->NORMAL_ONLY:Lcom/oppo/widget/OppoAppSecurityPermissions$State;

    iput-object v9, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mCurrentState:Lcom/oppo/widget/OppoAppSecurityPermissions$State;

    goto :goto_4
.end method

.method private showModifyPermDialog()V
    .locals 4

    .prologue
    .line 753
    iget-object v1, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104065d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 754
    .local v0, msg:Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x10404fd

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/oppo/widget/OppoAppSecurityPermissions$3;

    invoke-direct {v3, p0}, Lcom/oppo/widget/OppoAppSecurityPermissions$3;-><init>(Lcom/oppo/widget/OppoAppSecurityPermissions;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/oppo/widget/OppoAppSecurityPermissions$2;

    invoke-direct {v3, p0}, Lcom/oppo/widget/OppoAppSecurityPermissions$2;-><init>(Lcom/oppo/widget/OppoAppSecurityPermissions;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mConfirmDialog:Landroid/app/Dialog;

    .line 775
    return-void
.end method

.method private showPermissions()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 524
    sget-object v0, Lcom/oppo/widget/OppoAppSecurityPermissions$4;->$SwitchMap$com$oppo$widget$OppoAppSecurityPermissions$State:[I

    iget-object v1, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mCurrentState:Lcom/oppo/widget/OppoAppSecurityPermissions$State;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoAppSecurityPermissions$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 553
    :goto_0
    return-void

    .line 526
    :pswitch_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoAppSecurityPermissions;->displayNoPermissions()V

    .line 527
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mModifyButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 531
    :pswitch_1
    invoke-direct {p0, v3}, Lcom/oppo/widget/OppoAppSecurityPermissions;->displayPermissions(Z)V

    goto :goto_0

    .line 535
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/oppo/widget/OppoAppSecurityPermissions;->displayPermissions(Z)V

    goto :goto_0

    .line 539
    :pswitch_3
    invoke-direct {p0, v3}, Lcom/oppo/widget/OppoAppSecurityPermissions;->displayPermissions(Z)V

    .line 540
    iget-boolean v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mExpanded:Z

    if-eqz v0, :cond_0

    .line 541
    invoke-direct {p0, v2}, Lcom/oppo/widget/OppoAppSecurityPermissions;->displayPermissions(Z)V

    .line 542
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mShowMoreIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mShowMaxIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 543
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mShowMoreText:Landroid/widget/TextView;

    const v1, 0x1040408

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 544
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mNonDangerousList:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 550
    :goto_1
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mShowMore:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mShowMoreIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mShowMinIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 547
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mShowMoreText:Landroid/widget/TextView;

    const v1, 0x1040409

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 548
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mNonDangerousList:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 524
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private sortPermissions()V
    .locals 9

    .prologue
    .line 699
    iget-object v6, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mPermsList:Ljava/util/List;

    if-eqz v6, :cond_3

    .line 700
    iget-object v6, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mPermsList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PermissionInfo;

    .line 701
    .local v4, pInfo:Landroid/content/pm/PermissionInfo;
    const/4 v0, 0x0

    .line 702
    .local v0, diabledFlag:Z
    invoke-direct {p0, v4}, Lcom/oppo/widget/OppoAppSecurityPermissions;->getGrpLabel(Landroid/content/pm/PermissionInfo;)Ljava/lang/String;

    move-result-object v1

    .line 703
    .local v1, grpNameLable:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 706
    iget-object v6, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->perGrpSet:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 707
    .local v5, tmpInfo:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 708
    iget-object v6, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mDisabledPermInfoStrList:Ljava/util/List;

    iget-object v7, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    const/4 v0, 0x1

    .line 713
    .end local v5           #tmpInfo:Ljava/lang/Object;
    :cond_2
    if-nez v0, :cond_0

    .line 714
    const-string v6, "OppoAppSecurityPermissions"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enable: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    iget-object v6, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mEnabledPermInfoStrList:Ljava/util/List;

    iget-object v7, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 719
    .end local v0           #diabledFlag:Z
    .end local v1           #grpNameLable:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #pInfo:Landroid/content/pm/PermissionInfo;
    :cond_3
    return-void
.end method

.method private transformPerToGrp(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, permList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 218
    :cond_0
    return-void

    .line 197
    :cond_1
    const/4 v4, 0x0

    .line 198
    .local v4, permGroup:Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 199
    .local v2, info:Landroid/content/pm/PermissionInfo;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 201
    .local v3, perm:Ljava/lang/String;
    :try_start_0
    sget-object v5, Lcom/oppo/widget/OppoAppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    const/16 v6, 0x1000

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v2

    .line 202
    invoke-direct {p0, v2}, Lcom/oppo/widget/OppoAppSecurityPermissions;->isDisplayablePermission(Landroid/content/pm/PermissionInfo;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 205
    iget-object v5, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 206
    iget-object v4, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mDefaultGrpLabel:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_1
    if-eqz v4, :cond_2

    .line 214
    iget-object v5, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->perGrpSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v5, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->oldPerGrpSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 208
    :cond_3
    :try_start_1
    sget-object v5, Lcom/oppo/widget/OppoAppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v5

    sget-object v6, Lcom/oppo/widget/OppoAppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_1

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "OppoAppSecurityPermissions"

    const-string v6, "Invalid group name"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public changePermissons()V
    .locals 6

    .prologue
    .line 742
    :try_start_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoAppSecurityPermissions;->sortPermissions()V

    .line 743
    sget-object v2, Lcom/oppo/widget/OppoAppSecurityPermissions;->sPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mEnabledPermInfoStrList:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/pm/IPackageManager;->modifyPermissions(Ljava/lang/String;Ljava/util/List;Z)V

    .line 744
    sget-object v2, Lcom/oppo/widget/OppoAppSecurityPermissions;->sPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mDisabledPermInfoStrList:Ljava/util/List;

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/content/pm/IPackageManager;->modifyPermissions(Ljava/lang/String;Ljava/util/List;Z)V

    .line 745
    iget-object v2, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 746
    .local v0, am:Landroid/app/ActivityManager;
    iget-object v2, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    .end local v0           #am:Landroid/app/ActivityManager;
    :goto_0
    return-void

    .line 747
    :catch_0
    move-exception v1

    .line 748
    .local v1, ex:Landroid/os/RemoteException;
    const-string v2, "OppoAppSecurityPermissions"

    const-string v3, "RemoteException in modifyPermission!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDisabledPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 675
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mDisabledPermInfoStrList:Ljava/util/List;

    return-object v0
.end method

.method public getEnabledPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 679
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mEnabledPermInfoStrList:Ljava/util/List;

    return-object v0
.end method

.method public getPermissionCount()I
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mPermsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPermissionItemView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/view/View;
    .locals 7
    .parameter "context"
    .parameter "grpName"
    .parameter "description"
    .parameter "dangerous"

    .prologue
    .line 225
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 227
    .local v2, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p4, :cond_0

    const v0, 0x10803b0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .local v6, icon:Landroid/graphics/drawable/Drawable;
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 229
    invoke-direct/range {v0 .. v6}, Lcom/oppo/widget/OppoAppSecurityPermissions;->getPermissionItemView(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 227
    .end local v6           #icon:Landroid/graphics/drawable/Drawable;
    :cond_0
    const v0, 0x1080493

    goto :goto_0
.end method

.method public getPermissionsView()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 278
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mInflater:Landroid/view/LayoutInflater;

    .line 279
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x109002b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mPermsView:Landroid/widget/LinearLayout;

    .line 280
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mPermsView:Landroid/widget/LinearLayout;

    const v1, 0x10202b3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mShowMore:Landroid/view/View;

    .line 281
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mShowMore:Landroid/view/View;

    const v1, 0x10202b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mShowMoreIcon:Landroid/widget/ImageView;

    .line 282
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mShowMore:Landroid/view/View;

    const v1, 0x10202b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mShowMoreText:Landroid/widget/TextView;

    .line 283
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mPermsView:Landroid/widget/LinearLayout;

    const v1, 0x10202b2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mDangerousList:Landroid/widget/LinearLayout;

    .line 284
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mPermsView:Landroid/widget/LinearLayout;

    const v1, 0x10202b6

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mNonDangerousList:Landroid/widget/LinearLayout;

    .line 285
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mPermsView:Landroid/widget/LinearLayout;

    const v1, 0x10202b1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mNoPermsView:Landroid/view/View;

    .line 288
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mShowMore:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 289
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mShowMore:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mShowMore:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 291
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mShowMore:Landroid/view/View;

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 294
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mShowMoreText:Landroid/widget/TextView;

    sget-object v1, Lcom/oppo/widget/OppoAppSecurityPermissions;->mRes:Landroid/content/res/Resources;

    const v2, 0x10600af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 298
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mContext:Landroid/content/Context;

    const v1, 0x1040406

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mPermFormat:Ljava/lang/String;

    .line 299
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080493

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mNormalIcon:Landroid/graphics/drawable/Drawable;

    .line 300
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10803b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mDangerousIcon:Landroid/graphics/drawable/Drawable;

    .line 301
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080326

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mShowMaxIcon:Landroid/graphics/drawable/Drawable;

    .line 302
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080327

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mShowMinIcon:Landroid/graphics/drawable/Drawable;

    .line 305
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mPermsView:Landroid/widget/LinearLayout;

    const v1, 0x10202b7

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mModify:Landroid/view/View;

    .line 307
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mModify:Landroid/view/View;

    const v1, 0x10202b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mModifyButton:Landroid/widget/Button;

    .line 308
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mModifyButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 313
    sget v0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mType:I

    if-nez v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mModifyButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 327
    :goto_0
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mPermsList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoAppSecurityPermissions;->setPermissions(Ljava/util/List;)V

    .line 328
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mPermsView:Landroid/widget/LinearLayout;

    return-object v0

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoAppSecurityPermissions;->isSystemApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mModifyButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mModifyButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 319
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mModifyButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mModifyButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setFocusable(Z)V

    goto :goto_0
.end method

.method public hasPermissionChanged()Z
    .locals 2

    .prologue
    .line 737
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->perGrpSet:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->oldPerGrpSet:Ljava/util/HashSet;

    invoke-static {v0, v1}, Lcom/oppo/widget/OppoAppSecurityPermissions;->isSetEqual(Ljava/util/HashSet;Ljava/util/HashSet;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 778
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mShowMore:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 779
    iget-boolean v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mExpanded:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mExpanded:Z

    .line 780
    invoke-direct {p0}, Lcom/oppo/widget/OppoAppSecurityPermissions;->showPermissions()V

    .line 790
    :cond_0
    :goto_1
    return-void

    .line 779
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 781
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mModifyButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 782
    invoke-virtual {p0}, Lcom/oppo/widget/OppoAppSecurityPermissions;->hasPermissionChanged()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 783
    invoke-direct {p0}, Lcom/oppo/widget/OppoAppSecurityPermissions;->showModifyPermDialog()V

    goto :goto_1

    .line 785
    :cond_3
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method
