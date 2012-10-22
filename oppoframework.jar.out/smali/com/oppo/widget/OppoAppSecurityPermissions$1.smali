.class Lcom/oppo/widget/OppoAppSecurityPermissions$1;
.super Ljava/lang/Object;
.source "OppoAppSecurityPermissions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoAppSecurityPermissions;->getPermissionItemView(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/graphics/drawable/Drawable;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoAppSecurityPermissions;

.field final synthetic val$cb:Landroid/widget/CheckBox;

.field final synthetic val$dangerous:Z

.field final synthetic val$grpName:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoAppSecurityPermissions;Landroid/widget/CheckBox;Ljava/lang/CharSequence;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 473
    iput-object p1, p0, Lcom/oppo/widget/OppoAppSecurityPermissions$1;->this$0:Lcom/oppo/widget/OppoAppSecurityPermissions;

    iput-object p2, p0, Lcom/oppo/widget/OppoAppSecurityPermissions$1;->val$cb:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/oppo/widget/OppoAppSecurityPermissions$1;->val$grpName:Ljava/lang/CharSequence;

    iput-boolean p4, p0, Lcom/oppo/widget/OppoAppSecurityPermissions$1;->val$dangerous:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 475
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions$1;->val$cb:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions$1;->this$0:Lcom/oppo/widget/OppoAppSecurityPermissions;

    #getter for: Lcom/oppo/widget/OppoAppSecurityPermissions;->perGrpSet:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/oppo/widget/OppoAppSecurityPermissions;->access$000(Lcom/oppo/widget/OppoAppSecurityPermissions;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/widget/OppoAppSecurityPermissions$1;->val$grpName:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 480
    :goto_0
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions$1;->this$0:Lcom/oppo/widget/OppoAppSecurityPermissions;

    iget-object v1, p0, Lcom/oppo/widget/OppoAppSecurityPermissions$1;->val$grpName:Ljava/lang/CharSequence;

    iget-boolean v2, p0, Lcom/oppo/widget/OppoAppSecurityPermissions$1;->val$dangerous:Z

    iget-object v3, p0, Lcom/oppo/widget/OppoAppSecurityPermissions$1;->val$cb:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    #calls: Lcom/oppo/widget/OppoAppSecurityPermissions;->setCheckBox(Ljava/lang/CharSequence;ZZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/oppo/widget/OppoAppSecurityPermissions;->access$100(Lcom/oppo/widget/OppoAppSecurityPermissions;Ljava/lang/CharSequence;ZZ)V

    .line 481
    return-void

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions$1;->this$0:Lcom/oppo/widget/OppoAppSecurityPermissions;

    #getter for: Lcom/oppo/widget/OppoAppSecurityPermissions;->perGrpSet:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/oppo/widget/OppoAppSecurityPermissions;->access$000(Lcom/oppo/widget/OppoAppSecurityPermissions;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/widget/OppoAppSecurityPermissions$1;->val$grpName:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
