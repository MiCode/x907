.class public Lcom/oppo/camera/rewind/app/RectTracker$State;
.super Ljava/lang/Object;
.source "RectTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/app/RectTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "State"
.end annotation


# instance fields
.field public alignmentSuccessful:Z

.field public compositionSuccessful:Z

.field public error:Z

.field public isComplete:Z

.field final synthetic this$0:Lcom/oppo/camera/rewind/app/RectTracker;

.field public trackingSuccessful:Z


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/app/RectTracker;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 156
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RectTracker$State;->this$0:Lcom/oppo/camera/rewind/app/RectTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-boolean v1, p0, Lcom/oppo/camera/rewind/app/RectTracker$State;->error:Z

    .line 151
    iput-boolean v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$State;->trackingSuccessful:Z

    .line 152
    iput-boolean v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$State;->alignmentSuccessful:Z

    .line 153
    iput-boolean v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$State;->compositionSuccessful:Z

    .line 154
    iput-boolean v1, p0, Lcom/oppo/camera/rewind/app/RectTracker$State;->isComplete:Z

    .line 158
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/app/RectTracker;Lcom/oppo/camera/rewind/app/RectTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/RectTracker$State;-><init>(Lcom/oppo/camera/rewind/app/RectTracker;)V

    return-void
.end method
