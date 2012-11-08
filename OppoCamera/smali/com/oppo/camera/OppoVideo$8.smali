.class Lcom/oppo/camera/OppoVideo$8;
.super Ljava/lang/Object;
.source "OppoVideo.java"

# interfaces
.implements Lcom/oppo/camera/setting/SettingMenuBase$OnScreenHintListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/OppoVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/OppoVideo;


# direct methods
.method constructor <init>(Lcom/oppo/camera/OppoVideo;)V
    .locals 0
    .parameter

    .prologue
    .line 1725
    iput-object p1, p0, Lcom/oppo/camera/OppoVideo$8;->this$0:Lcom/oppo/camera/OppoVideo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenHint(I)V
    .locals 1
    .parameter "textId"

    .prologue
    .line 1729
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo$8;->this$0:Lcom/oppo/camera/OppoVideo;

    #calls: Lcom/oppo/camera/OppoVideo;->showHintView(I)V
    invoke-static {v0, p1}, Lcom/oppo/camera/OppoVideo;->access$300(Lcom/oppo/camera/OppoVideo;I)V

    .line 1730
    return-void
.end method
