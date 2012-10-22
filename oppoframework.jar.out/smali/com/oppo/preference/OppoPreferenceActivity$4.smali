.class Lcom/oppo/preference/OppoPreferenceActivity$4;
.super Ljava/lang/Object;
.source "OppoPreferenceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/preference/OppoPreferenceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/preference/OppoPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/oppo/preference/OppoPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 572
    iput-object p1, p0, Lcom/oppo/preference/OppoPreferenceActivity$4;->this$0:Lcom/oppo/preference/OppoPreferenceActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 574
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$4;->this$0:Lcom/oppo/preference/OppoPreferenceActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/oppo/preference/OppoPreferenceActivity;->setResult(I)V

    .line 575
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$4;->this$0:Lcom/oppo/preference/OppoPreferenceActivity;

    invoke-virtual {v0}, Lcom/oppo/preference/OppoPreferenceActivity;->finish()V

    .line 576
    return-void
.end method
