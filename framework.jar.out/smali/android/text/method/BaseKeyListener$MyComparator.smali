.class Landroid/text/method/BaseKeyListener$MyComparator;
.super Ljava/lang/Object;
.source "BaseKeyListener.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/BaseKeyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyComparator"
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
.field final synthetic this$0:Landroid/text/method/BaseKeyListener;


# direct methods
.method constructor <init>(Landroid/text/method/BaseKeyListener;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Landroid/text/method/BaseKeyListener$MyComparator;->this$0:Landroid/text/method/BaseKeyListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/widget/CommaInfo;Landroid/widget/CommaInfo;)I
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 88
    iget-object v0, p1, Landroid/widget/CommaInfo;->mStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p2, Landroid/widget/CommaInfo;->mStr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 89
    const/4 v0, 0x1

    .line 91
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    check-cast p1, Landroid/widget/CommaInfo;

    .end local p1
    check-cast p2, Landroid/widget/CommaInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseKeyListener$MyComparator;->compare(Landroid/widget/CommaInfo;Landroid/widget/CommaInfo;)I

    move-result v0

    return v0
.end method
