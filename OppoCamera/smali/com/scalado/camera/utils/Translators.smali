.class public Lcom/scalado/camera/utils/Translators;
.super Ljava/lang/Object;
.source "Translators.java"


# static fields
.field private static synthetic $SWITCH_TABLE$android$graphics$Bitmap$Config:[I


# direct methods
.method static synthetic $SWITCH_TABLE$android$graphics$Bitmap$Config()[I
    .locals 3

    .prologue
    .line 8
    sget-object v0, Lcom/scalado/camera/utils/Translators;->$SWITCH_TABLE$android$graphics$Bitmap$Config:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/graphics/Bitmap$Config;->values()[Landroid/graphics/Bitmap$Config;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/scalado/camera/utils/Translators;->$SWITCH_TABLE$android$graphics$Bitmap$Config:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static translateFromScaladoImageConfig(Lcom/scalado/base/Image$Config;)I
    .locals 2
    .parameter "config"

    .prologue
    .line 86
    if-nez p0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "config was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    sget-object v0, Lcom/scalado/base/Image$Config;->RGB_565:Lcom/scalado/base/Image$Config;

    if-ne p0, v0, :cond_1

    .line 90
    const/4 v0, 0x4

    .line 96
    :goto_0
    return v0

    .line 92
    :cond_1
    sget-object v0, Lcom/scalado/base/Image$Config;->YUV_422SP:Lcom/scalado/base/Image$Config;

    if-ne p0, v0, :cond_2

    .line 93
    const/16 v0, 0x10

    goto :goto_0

    .line 95
    :cond_2
    sget-object v0, Lcom/scalado/base/Image$Config;->YVU_420SP:Lcom/scalado/base/Image$Config;

    if-ne p0, v0, :cond_3

    .line 96
    const/16 v0, 0x11

    goto :goto_0

    .line 99
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported config."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static translateSize(Landroid/hardware/Camera$Size;)Lcom/scalado/base/Size;
    .locals 3
    .parameter "size"

    .prologue
    .line 104
    new-instance v0, Lcom/scalado/base/Size;

    iget v1, p0, Landroid/hardware/Camera$Size;->width:I

    iget v2, p0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v0, v1, v2}, Lcom/scalado/base/Size;-><init>(II)V

    return-object v0
.end method

.method public static translateToBitmapConfigFromScaladoImageConfig(Lcom/scalado/base/Image$Config;)Landroid/graphics/Bitmap$Config;
    .locals 2
    .parameter "config"

    .prologue
    .line 42
    if-nez p0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "config was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    sget-object v0, Lcom/scalado/base/Image$Config;->RGB_565:Lcom/scalado/base/Image$Config;

    if-ne p0, v0, :cond_1

    .line 46
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 49
    :goto_0
    return-object v0

    .line 48
    :cond_1
    sget-object v0, Lcom/scalado/base/Image$Config;->ARGB_8888:Lcom/scalado/base/Image$Config;

    if-ne p0, v0, :cond_2

    .line 49
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 52
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported config."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static translateToScaladoImageConfig(I)Lcom/scalado/base/Image$Config;
    .locals 3
    .parameter "imageFormat"

    .prologue
    .line 63
    sparse-switch p0, :sswitch_data_0

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported imageformat: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :sswitch_0
    sget-object v0, Lcom/scalado/base/Image$Config;->RGB_565_D:Lcom/scalado/base/Image$Config;

    .line 71
    :goto_0
    return-object v0

    .line 67
    :sswitch_1
    sget-object v0, Lcom/scalado/base/Image$Config;->YUV_422SP:Lcom/scalado/base/Image$Config;

    goto :goto_0

    .line 69
    :sswitch_2
    sget-object v0, Lcom/scalado/base/Image$Config;->YVU_420SP:Lcom/scalado/base/Image$Config;

    goto :goto_0

    .line 71
    :sswitch_3
    sget-object v0, Lcom/scalado/base/Image$Config;->YUV422_Y1UY2V:Lcom/scalado/base/Image$Config;

    goto :goto_0

    .line 73
    :sswitch_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Colorformat YV12 is currently not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x10 -> :sswitch_1
        0x11 -> :sswitch_2
        0x14 -> :sswitch_3
        0x32315659 -> :sswitch_4
    .end sparse-switch
.end method

.method public static translateToScaladoImageConfig(Landroid/graphics/Bitmap$Config;)Lcom/scalado/base/Image$Config;
    .locals 3
    .parameter "imageFormat"

    .prologue
    .line 21
    invoke-static {}, Lcom/scalado/camera/utils/Translators;->$SWITCH_TABLE$android$graphics$Bitmap$Config()[I

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported imageformat: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :pswitch_0
    sget-object v0, Lcom/scalado/base/Image$Config;->RGB_565_D:Lcom/scalado/base/Image$Config;

    .line 25
    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/scalado/base/Image$Config;->ARGB_8888:Lcom/scalado/base/Image$Config;

    goto :goto_0

    .line 27
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Colorformat ALPHA_8 is currently not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Colorformat ARGB_4444 is currently not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
