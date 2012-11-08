.class Lcom/oppo/camera/rewind/RewindActivity$MyAutoFocusCallback;
.super Ljava/lang/Object;
.source "RewindActivity.java"

# interfaces
.implements Lcom/scalado/camera/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/RewindActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/rewind/RewindActivity;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/RewindActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1059
    iput-object p1, p0, Lcom/oppo/camera/rewind/RewindActivity$MyAutoFocusCallback;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/RewindActivity;Lcom/oppo/camera/rewind/RewindActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1059
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/RewindActivity$MyAutoFocusCallback;-><init>(Lcom/oppo/camera/rewind/RewindActivity;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLcom/scalado/camera/Camera;)V
    .locals 2
    .parameter "success"
    .parameter "camera"

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyAutoFocusCallback;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    const/4 v1, 0x1

    #setter for: Lcom/oppo/camera/rewind/RewindActivity;->mCapturingEnabled:Z
    invoke-static {v0, v1}, Lcom/oppo/camera/rewind/RewindActivity;->access$2202(Lcom/oppo/camera/rewind/RewindActivity;Z)Z

    .line 1063
    return-void
.end method
