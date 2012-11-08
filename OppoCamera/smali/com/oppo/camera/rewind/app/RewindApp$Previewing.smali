.class Lcom/oppo/camera/rewind/app/RewindApp$Previewing;
.super Lcom/oppo/camera/rewind/app/RewindApp$State;
.source "RewindApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/app/RewindApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Previewing"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/rewind/app/RewindApp;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/app/RewindApp;)V
    .locals 1
    .parameter

    .prologue
    .line 793
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RewindApp$Previewing;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/rewind/app/RewindApp$State;-><init>(Lcom/oppo/camera/rewind/app/RewindApp;Lcom/oppo/camera/rewind/app/RewindApp$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/app/RewindApp;Lcom/oppo/camera/rewind/app/RewindApp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 793
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/RewindApp$Previewing;-><init>(Lcom/oppo/camera/rewind/app/RewindApp;)V

    return-void
.end method


# virtual methods
.method protected onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 800
    const/4 v0, 0x0

    return v0
.end method

.method protected onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 804
    const/4 v0, 0x0

    return v0
.end method

.method protected start()V
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$Previewing;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->startPreview()V

    .line 796
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$Previewing;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #calls: Lcom/oppo/camera/rewind/app/RewindApp;->hideTopbar()V
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->access$1800(Lcom/oppo/camera/rewind/app/RewindApp;)V

    .line 797
    return-void
.end method
