.class Lcom/oppo/camera/rewind/RewindActivity$3;
.super Ljava/lang/Object;
.source "RewindActivity.java"

# interfaces
.implements Lcom/oppo/camera/utils/StorageManager$OnMountStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/RewindActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/rewind/RewindActivity;


# direct methods
.method constructor <init>(Lcom/oppo/camera/rewind/RewindActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1548
    iput-object p1, p0, Lcom/oppo/camera/rewind/RewindActivity$3;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageMounted()V
    .locals 0

    .prologue
    .line 1556
    return-void
.end method

.method public onStorageUnmount()V
    .locals 0

    .prologue
    .line 1552
    return-void
.end method
