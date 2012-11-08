.class Lcom/oppo/camera/rewind/ui/UiManager$WidgetEvent;
.super Ljava/lang/Object;
.source "UiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/ui/UiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetEvent"
.end annotation


# instance fields
.field private mEvent:I

.field final synthetic this$0:Lcom/oppo/camera/rewind/ui/UiManager;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/ui/UiManager;I)V
    .locals 0
    .parameter
    .parameter "event"

    .prologue
    .line 720
    iput-object p1, p0, Lcom/oppo/camera/rewind/ui/UiManager$WidgetEvent;->this$0:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 721
    iput p2, p0, Lcom/oppo/camera/rewind/ui/UiManager$WidgetEvent;->mEvent:I

    .line 722
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/ui/UiManager;ILcom/oppo/camera/rewind/ui/UiManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 716
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/rewind/ui/UiManager$WidgetEvent;-><init>(Lcom/oppo/camera/rewind/ui/UiManager;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/oppo/camera/rewind/ui/UiManager$WidgetEvent;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 716
    iget v0, p0, Lcom/oppo/camera/rewind/ui/UiManager$WidgetEvent;->mEvent:I

    return v0
.end method
