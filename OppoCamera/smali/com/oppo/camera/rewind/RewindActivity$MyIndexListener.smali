.class Lcom/oppo/camera/rewind/RewindActivity$MyIndexListener;
.super Ljava/lang/Object;
.source "RewindActivity.java"

# interfaces
.implements Lcom/oppo/camera/rewind/IndexSelector$IndexListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/RewindActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyIndexListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/rewind/RewindActivity;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/RewindActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 980
    iput-object p1, p0, Lcom/oppo/camera/rewind/RewindActivity$MyIndexListener;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/RewindActivity;Lcom/oppo/camera/rewind/RewindActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 980
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/RewindActivity$MyIndexListener;-><init>(Lcom/oppo/camera/rewind/RewindActivity;)V

    return-void
.end method


# virtual methods
.method public onIndexFocused(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 983
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyIndexListener;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mViewer:Lcom/oppo/camera/rewind/app/RewindViewer;
    invoke-static {v0}, Lcom/oppo/camera/rewind/RewindActivity;->access$4000(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/oppo/camera/rewind/app/RewindViewer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/rewind/app/RewindViewer;->selectBackground(I)V

    .line 984
    return-void
.end method

.method public onIndexSelected(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 986
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyIndexListener;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mViewer:Lcom/oppo/camera/rewind/app/RewindViewer;
    invoke-static {v0}, Lcom/oppo/camera/rewind/RewindActivity;->access$4000(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/oppo/camera/rewind/app/RewindViewer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/rewind/app/RewindViewer;->selectBackground(I)V

    .line 987
    return-void
.end method
