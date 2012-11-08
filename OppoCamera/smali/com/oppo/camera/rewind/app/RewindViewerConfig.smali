.class public Lcom/oppo/camera/rewind/app/RewindViewerConfig;
.super Ljava/lang/Object;
.source "RewindViewerConfig.java"


# instance fields
.field public commitButton:Lcom/oppo/camera/rewind/app/ExtWidget;

.field public indexSelector:Lcom/oppo/camera/rewind/app/ExtIndexSelector;

.field public indicatorExtraY:F

.field public indicatorY:F

.field public jobbingBitmap:Landroid/graphics/Bitmap;

.field public mMode:I

.field public predefinedImages:[Ljava/lang/String;

.field public predefinedSizes:[I

.field public relCenter:Landroid/graphics/PointF;

.field public relR:F

.field public relRimW:F

.field public saveButton:Lcom/oppo/camera/rewind/app/ExtWidget;

.field public shutterButton:Lcom/oppo/camera/rewind/app/ExtWidget;

.field public topBar:Lcom/oppo/camera/rewind/app/ExtWidget;

.field public wheelBitmap:Landroid/graphics/Bitmap;

.field public wheelIndicatorBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->mMode:I

    .line 72
    const v0, 0x3f57a91d

    iput v0, p0, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->indicatorY:F

    .line 79
    const v0, 0x3d6a0ea1

    iput v0, p0, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->indicatorExtraY:F

    return-void
.end method
