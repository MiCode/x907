.class Lcom/oppo/camera/OppoCamera$18;
.super Ljava/lang/Object;
.source "OppoCamera.java"

# interfaces
.implements Lcom/oppo/camera/setting/SettingMenuBase$OnScreenHintListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/OppoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/OppoCamera;


# direct methods
.method constructor <init>(Lcom/oppo/camera/OppoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 2992
    iput-object p1, p0, Lcom/oppo/camera/OppoCamera$18;->this$0:Lcom/oppo/camera/OppoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenHint(I)V
    .locals 1
    .parameter "textId"

    .prologue
    .line 2996
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$18;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->showHintView(I)V
    invoke-static {v0, p1}, Lcom/oppo/camera/OppoCamera;->access$9200(Lcom/oppo/camera/OppoCamera;I)V

    .line 2997
    return-void
.end method
