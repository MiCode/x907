.class Landroid/widget/TextView$4;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/widget/CommaInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .parameter

    .prologue
    .line 14159
    iput-object p1, p0, Landroid/widget/TextView$4;->this$0:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/widget/CommaInfo;Landroid/widget/CommaInfo;)I
    .locals 2
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 14162
    iget v0, p1, Landroid/widget/CommaInfo;->mStart:I

    iget v1, p2, Landroid/widget/CommaInfo;->mStart:I

    if-eq v0, v1, :cond_1

    .line 14163
    iget v0, p1, Landroid/widget/CommaInfo;->mStart:I

    iget v1, p2, Landroid/widget/CommaInfo;->mStart:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    .line 14165
    :goto_0
    return v0

    .line 14163
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 14165
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14159
    check-cast p1, Landroid/widget/CommaInfo;

    .end local p1
    check-cast p2, Landroid/widget/CommaInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView$4;->compare(Landroid/widget/CommaInfo;Landroid/widget/CommaInfo;)I

    move-result v0

    return v0
.end method
