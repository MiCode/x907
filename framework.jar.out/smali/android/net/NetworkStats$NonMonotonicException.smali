.class public Landroid/net/NetworkStats$NonMonotonicException;
.super Ljava/lang/Exception;
.source "NetworkStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NonMonotonicException"
.end annotation


# instance fields
.field public final left:Landroid/net/NetworkStats;

.field public final leftIndex:I

.field public final right:Landroid/net/NetworkStats;

.field public final rightIndex:I


# direct methods
.method public constructor <init>(Landroid/net/NetworkStats;ILandroid/net/NetworkStats;I)V
    .locals 1
    .parameter "left"
    .parameter "leftIndex"
    .parameter "right"
    .parameter "rightIndex"

    .prologue
    .line 682
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 683
    const-string/jumbo v0, "missing left"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStats;

    iput-object v0, p0, Landroid/net/NetworkStats$NonMonotonicException;->left:Landroid/net/NetworkStats;

    .line 684
    const-string/jumbo v0, "missing right"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStats;

    iput-object v0, p0, Landroid/net/NetworkStats$NonMonotonicException;->right:Landroid/net/NetworkStats;

    .line 685
    iput p2, p0, Landroid/net/NetworkStats$NonMonotonicException;->leftIndex:I

    .line 686
    iput p4, p0, Landroid/net/NetworkStats$NonMonotonicException;->rightIndex:I

    .line 687
    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkStats;Landroid/net/NetworkStats;)V
    .locals 1
    .parameter "left"
    .parameter "right"

    .prologue
    const/4 v0, -0x1

    .line 678
    invoke-direct {p0, p1, v0, p2, v0}, Landroid/net/NetworkStats$NonMonotonicException;-><init>(Landroid/net/NetworkStats;ILandroid/net/NetworkStats;I)V

    .line 679
    return-void
.end method
