.class Lcom/oppo/widget/OppoAppSecurityPermissions$PermissionInfoComparator;
.super Ljava/lang/Object;
.source "OppoAppSecurityPermissions.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoAppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PermissionInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/PermissionInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mPm:Landroid/content/pm/PackageManager;

.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 1
    .parameter "pm"

    .prologue
    .line 600
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 599
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions$PermissionInfoComparator;->sCollator:Ljava/text/Collator;

    .line 601
    iput-object p1, p0, Lcom/oppo/widget/OppoAppSecurityPermissions$PermissionInfoComparator;->mPm:Landroid/content/pm/PackageManager;

    .line 602
    return-void
.end method


# virtual methods
.method public final compare(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionInfo;)I
    .locals 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 604
    iget-object v2, p0, Lcom/oppo/widget/OppoAppSecurityPermissions$PermissionInfoComparator;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v2}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 605
    .local v0, sa:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/oppo/widget/OppoAppSecurityPermissions$PermissionInfoComparator;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v2}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 606
    .local v1, sb:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/oppo/widget/OppoAppSecurityPermissions$PermissionInfoComparator;->sCollator:Ljava/text/Collator;

    invoke-virtual {v2, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 597
    check-cast p1, Landroid/content/pm/PermissionInfo;

    .end local p1
    check-cast p2, Landroid/content/pm/PermissionInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/oppo/widget/OppoAppSecurityPermissions$PermissionInfoComparator;->compare(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionInfo;)I

    move-result v0

    return v0
.end method
