.class abstract Lcom/oppo/camera/rewind/app/RewindApp$ReceivingImages;
.super Lcom/oppo/camera/rewind/app/RewindApp$State;
.source "RewindApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/app/RewindApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ReceivingImages"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/rewind/app/RewindApp;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/app/RewindApp;)V
    .locals 1
    .parameter

    .prologue
    .line 863
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RewindApp$ReceivingImages;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/rewind/app/RewindApp$State;-><init>(Lcom/oppo/camera/rewind/app/RewindApp;Lcom/oppo/camera/rewind/app/RewindApp$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/app/RewindApp;Lcom/oppo/camera/rewind/app/RewindApp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 863
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/RewindApp$ReceivingImages;-><init>(Lcom/oppo/camera/rewind/app/RewindApp;)V

    return-void
.end method


# virtual methods
.method protected acceptsImages()Z
    .locals 1

    .prologue
    .line 865
    const/4 v0, 0x1

    return v0
.end method
