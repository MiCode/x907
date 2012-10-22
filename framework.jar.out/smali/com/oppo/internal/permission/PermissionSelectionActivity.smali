.class public Lcom/oppo/internal/permission/PermissionSelectionActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "PermissionSelectionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "PermissionSelectionActivity"


# instance fields
.field private mPackageName:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/internal/permission/PermissionSelectionActivity;->mPackageName:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 69
    packed-switch p2, :pswitch_data_0

    .line 82
    :goto_0
    return-void

    .line 71
    :pswitch_0
    const-string/jumbo v1, "oppo.permissions.disable"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MODIFY_PERMISSIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, modifyIntent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.PACKAGES"

    iget-object v2, p0, Lcom/oppo/internal/permission/PermissionSelectionActivity;->mPackageName:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    invoke-virtual {p0, v0}, Lcom/oppo/internal/permission/PermissionSelectionActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    .line 34
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/oppo/internal/permission/PermissionSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "android.intent.extra.PACKAGES"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, packageName:[Ljava/lang/String;
    if-eqz v2, :cond_0

    aget-object v5, v2, v7

    if-nez v5, :cond_1

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/internal/permission/PermissionSelectionActivity;->finish()V

    .line 42
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/oppo/internal/permission/PermissionSelectionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 43
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    aget-object v5, v2, v5

    const/16 v6, 0x2000

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    iput-object v2, p0, Lcom/oppo/internal/permission/PermissionSelectionActivity;->mPackageName:[Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Lcom/oppo/internal/permission/PermissionSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 53
    .local v4, res:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 54
    .local v1, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v5, 0x108009b

    iput v5, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 55
    const v5, 0x10404fe

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 56
    const v5, 0x10404ff

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 58
    const v5, 0x104000a

    invoke-virtual {p0, v5}, Lcom/oppo/internal/permission/PermissionSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 59
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 61
    const/high16 v5, 0x104

    invoke-virtual {p0, v5}, Lcom/oppo/internal/permission/PermissionSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 62
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 64
    invoke-virtual {p0}, Lcom/oppo/internal/permission/PermissionSelectionActivity;->setupAlert()V

    .line 65
    return-void

    .line 45
    .end local v1           #p:Lcom/android/internal/app/AlertController$AlertParams;
    .end local v4           #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 46
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "PermissionSelectionActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception when retrieving package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    invoke-virtual {p0}, Lcom/oppo/internal/permission/PermissionSelectionActivity;->finish()V

    goto :goto_0
.end method
