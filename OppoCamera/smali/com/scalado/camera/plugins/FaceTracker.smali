.class public Lcom/scalado/camera/plugins/FaceTracker;
.super Ljava/lang/Object;
.source "FaceTracker.java"

# interfaces
.implements Lcom/scalado/camera/Plugin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/camera/plugins/FaceTracker$FaceTrackingListener;,
        Lcom/scalado/camera/plugins/FaceTracker$ImageCallbackHandler;
    }
.end annotation


# instance fields
.field private mFaceListener:Lcom/scalado/camera/plugins/FaceTracker$FaceTrackingListener;

.field private mHandler:Lcom/scalado/camera/plugins/FaceTracker$ImageCallbackHandler;


# direct methods
.method public constructor <init>(Lcom/scalado/camera/plugins/FaceTracker$FaceTrackingListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/scalado/camera/plugins/FaceTracker;->mFaceListener:Lcom/scalado/camera/plugins/FaceTracker$FaceTrackingListener;

    .line 31
    new-instance v0, Lcom/scalado/camera/plugins/FaceTracker$ImageCallbackHandler;

    invoke-direct {v0, p0}, Lcom/scalado/camera/plugins/FaceTracker$ImageCallbackHandler;-><init>(Lcom/scalado/camera/plugins/FaceTracker;)V

    iput-object v0, p0, Lcom/scalado/camera/plugins/FaceTracker;->mHandler:Lcom/scalado/camera/plugins/FaceTracker$ImageCallbackHandler;

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/scalado/camera/plugins/FaceTracker;)Lcom/scalado/camera/plugins/FaceTracker$FaceTrackingListener;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/scalado/camera/plugins/FaceTracker;->mFaceListener:Lcom/scalado/camera/plugins/FaceTracker$FaceTrackingListener;

    return-object v0
.end method


# virtual methods
.method public getImageCallback()Lcom/scalado/camera/Camera$ImageCallback;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/scalado/camera/plugins/FaceTracker;->mHandler:Lcom/scalado/camera/plugins/FaceTracker$ImageCallbackHandler;

    return-object v0
.end method
