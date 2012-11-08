.class public Lcom/oppo/camera/setting/CameraSettingItem;
.super Ljava/lang/Object;
.source "CameraSettingItem.java"


# instance fields
.field private mFirstIcon:Landroid/graphics/Bitmap;

.field private mIsDrawFirstIcon:Z

.field private mIsDrawSVGA:Z

.field private mSVGAIcon:Landroid/graphics/Bitmap;

.field private mSecondIcon:Landroid/graphics/Bitmap;

.field private mValue:I


# direct methods
.method public constructor <init>(Lcom/oppo/camera/setting/IconsPanelView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "parentView"
    .parameter "firstBitmap"
    .parameter "secondBitmap"

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/setting/CameraSettingItem;->mIsDrawSVGA:Z

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/camera/setting/CameraSettingItem;->mValue:I

    .line 19
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 20
    iput-object p2, p0, Lcom/oppo/camera/setting/CameraSettingItem;->mFirstIcon:Landroid/graphics/Bitmap;

    .line 21
    iput-object p3, p0, Lcom/oppo/camera/setting/CameraSettingItem;->mSecondIcon:Landroid/graphics/Bitmap;

    .line 23
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;FF)V
    .locals 2
    .parameter "canvas"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x0

    .line 27
    iget-boolean v0, p0, Lcom/oppo/camera/setting/CameraSettingItem;->mIsDrawSVGA:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/setting/CameraSettingItem;->mSVGAIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/setting/CameraSettingItem;->mSVGAIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/oppo/camera/setting/CameraSettingItem;->mSVGAIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    iget-boolean v0, p0, Lcom/oppo/camera/setting/CameraSettingItem;->mIsDrawFirstIcon:Z

    if-eqz v0, :cond_2

    .line 33
    iget-object v0, p0, Lcom/oppo/camera/setting/CameraSettingItem;->mFirstIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/setting/CameraSettingItem;->mFirstIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/oppo/camera/setting/CameraSettingItem;->mFirstIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 38
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/setting/CameraSettingItem;->mSecondIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/setting/CameraSettingItem;->mSecondIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/oppo/camera/setting/CameraSettingItem;->mSecondIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/oppo/camera/setting/CameraSettingItem;->mValue:I

    return v0
.end method

.method public onSettingChanged(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 87
    iget v0, p0, Lcom/oppo/camera/setting/CameraSettingItem;->mValue:I

    if-eq v0, p1, :cond_0

    .line 88
    iput p1, p0, Lcom/oppo/camera/setting/CameraSettingItem;->mValue:I

    .line 89
    iget-boolean v0, p0, Lcom/oppo/camera/setting/CameraSettingItem;->mIsDrawFirstIcon:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/oppo/camera/setting/CameraSettingItem;->mIsDrawFirstIcon:Z

    .line 91
    :cond_0
    return-void

    .line 89
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIsDrawSVGA(ZLandroid/graphics/Bitmap;)V
    .locals 0
    .parameter "isDrawSVGAIcon"
    .parameter "svgaIcon"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/oppo/camera/setting/CameraSettingItem;->mIsDrawSVGA:Z

    .line 47
    iput-object p2, p0, Lcom/oppo/camera/setting/CameraSettingItem;->mSVGAIcon:Landroid/graphics/Bitmap;

    .line 48
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 51
    iput p1, p0, Lcom/oppo/camera/setting/CameraSettingItem;->mValue:I

    .line 52
    packed-switch p1, :pswitch_data_0

    .line 77
    :pswitch_0
    iput-boolean v0, p0, Lcom/oppo/camera/setting/CameraSettingItem;->mIsDrawFirstIcon:Z

    .line 80
    :goto_0
    return-void

    .line 62
    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/setting/CameraSettingItem;->mIsDrawFirstIcon:Z

    goto :goto_0

    .line 73
    :pswitch_2
    iput-boolean v0, p0, Lcom/oppo/camera/setting/CameraSettingItem;->mIsDrawFirstIcon:Z

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
