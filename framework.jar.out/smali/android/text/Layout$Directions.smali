.class public Landroid/text/Layout$Directions;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Directions"
.end annotation


# instance fields
.field mDirections:[I


# direct methods
.method constructor <init>([I)V
    .locals 0
    .parameter "dirs"

    .prologue
    .line 1921
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1922
    iput-object p1, p0, Landroid/text/Layout$Directions;->mDirections:[I

    .line 1923
    return-void
.end method