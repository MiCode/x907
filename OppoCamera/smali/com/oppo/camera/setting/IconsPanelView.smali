.class public Lcom/oppo/camera/setting/IconsPanelView;
.super Landroid/view/View;
.source "IconsPanelView.java"


# static fields
.field private static final CAMERA_SETTINGS_COUNT:I

.field private static final VIDEO_SETTINGS_COUNT:I

.field private static final mCameraSettingFocusedIcons:[Ljava/lang/String;

.field private static final mCameraSettingUnFocusedIcons:[Ljava/lang/String;

.field private static final mVideoSettingFocusedIcons:[Ljava/lang/String;

.field private static final mVideoSettingUnFocusedIcons:[Ljava/lang/String;


# instance fields
.field private mAnimationEndTime:J

.field private mAnimationStartTime:J

.field private mClockwise:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentDegree:I

.field private mIconPositionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/camera/setting/IconsPanelController$IconPosition;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCameraMode:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mSelectedIconList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/camera/setting/CameraSettingItem;",
            ">;"
        }
    .end annotation
.end field

.field private mStartDegree:I

.field private mTargetDegree:I

.field private mUnselectedIconList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "camera_icon_hdr_f.png"

    aput-object v1, v0, v2

    const-string v1, "camera_icon_sound_f.png"

    aput-object v1, v0, v3

    const-string v1, "camera_icon_low_light_f.png"

    aput-object v1, v0, v4

    sput-object v0, Lcom/oppo/camera/setting/IconsPanelView;->mCameraSettingFocusedIcons:[Ljava/lang/String;

    .line 41
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "camera_icon_hdr.png"

    aput-object v1, v0, v2

    const-string v1, "camera_icon_sound.png"

    aput-object v1, v0, v3

    const-string v1, "camera_icon_low_light_n.png"

    aput-object v1, v0, v4

    sput-object v0, Lcom/oppo/camera/setting/IconsPanelView;->mCameraSettingUnFocusedIcons:[Ljava/lang/String;

    .line 43
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "video_size_720p.png"

    aput-object v1, v0, v2

    const-string v1, "camera_icon_record_f.png"

    aput-object v1, v0, v3

    const-string v1, "camera_icon_format_f.png"

    aput-object v1, v0, v4

    sput-object v0, Lcom/oppo/camera/setting/IconsPanelView;->mVideoSettingFocusedIcons:[Ljava/lang/String;

    .line 46
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "video_size_1080p.png"

    aput-object v1, v0, v2

    const-string v1, "camera_icon_record_n.png"

    aput-object v1, v0, v3

    const-string v1, "camera_icon_format_n.png"

    aput-object v1, v0, v4

    sput-object v0, Lcom/oppo/camera/setting/IconsPanelView;->mVideoSettingUnFocusedIcons:[Ljava/lang/String;

    .line 57
    sget-object v0, Lcom/oppo/camera/setting/IconsPanelView;->mCameraSettingFocusedIcons:[Ljava/lang/String;

    array-length v0, v0

    sput v0, Lcom/oppo/camera/setting/IconsPanelView;->CAMERA_SETTINGS_COUNT:I

    .line 58
    sget-object v0, Lcom/oppo/camera/setting/IconsPanelView;->mVideoSettingFocusedIcons:[Ljava/lang/String;

    array-length v0, v0

    sput v0, Lcom/oppo/camera/setting/IconsPanelView;->VIDEO_SETTINGS_COUNT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 60
    iput v0, p0, Lcom/oppo/camera/setting/IconsPanelView;->mCurrentDegree:I

    .line 61
    iput v0, p0, Lcom/oppo/camera/setting/IconsPanelView;->mStartDegree:I

    .line 62
    iput v0, p0, Lcom/oppo/camera/setting/IconsPanelView;->mTargetDegree:I

    .line 63
    iput-boolean v0, p0, Lcom/oppo/camera/setting/IconsPanelView;->mClockwise:Z

    .line 64
    iput-wide v1, p0, Lcom/oppo/camera/setting/IconsPanelView;->mAnimationStartTime:J

    .line 65
    iput-wide v1, p0, Lcom/oppo/camera/setting/IconsPanelView;->mAnimationEndTime:J

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/setting/IconsPanelView;->mIsCameraMode:Z

    .line 78
    iput-object p1, p0, Lcom/oppo/camera/setting/IconsPanelView;->mContext:Landroid/content/Context;

    .line 79
    invoke-direct {p0}, Lcom/oppo/camera/setting/IconsPanelView;->init()V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    iput v0, p0, Lcom/oppo/camera/setting/IconsPanelView;->mCurrentDegree:I

    .line 61
    iput v0, p0, Lcom/oppo/camera/setting/IconsPanelView;->mStartDegree:I

    .line 62
    iput v0, p0, Lcom/oppo/camera/setting/IconsPanelView;->mTargetDegree:I

    .line 63
    iput-boolean v0, p0, Lcom/oppo/camera/setting/IconsPanelView;->mClockwise:Z

    .line 64
    iput-wide v1, p0, Lcom/oppo/camera/setting/IconsPanelView;->mAnimationStartTime:J

    .line 65
    iput-wide v1, p0, Lcom/oppo/camera/setting/IconsPanelView;->mAnimationEndTime:J

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/setting/IconsPanelView;->mIsCameraMode:Z

    .line 72
    iput-object p1, p0, Lcom/oppo/camera/setting/IconsPanelView;->mContext:Landroid/content/Context;

    .line 73
    invoke-direct {p0}, Lcom/oppo/camera/setting/IconsPanelView;->init()V

    .line 74
    return-void
.end method

.method private calculateDegree()V
    .locals 6

    .prologue
    .line 175
    iget v4, p0, Lcom/oppo/camera/setting/IconsPanelView;->mCurrentDegree:I

    iget v5, p0, Lcom/oppo/camera/setting/IconsPanelView;->mTargetDegree:I

    if-eq v4, v5, :cond_0

    .line 176
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 177
    .local v2, time:J
    iget-wide v4, p0, Lcom/oppo/camera/setting/IconsPanelView;->mAnimationEndTime:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_3

    .line 178
    iget-wide v4, p0, Lcom/oppo/camera/setting/IconsPanelView;->mAnimationStartTime:J

    sub-long v4, v2, v4

    long-to-int v1, v4

    .line 179
    .local v1, deltaTime:I
    iget v4, p0, Lcom/oppo/camera/setting/IconsPanelView;->mStartDegree:I

    iget-boolean v5, p0, Lcom/oppo/camera/setting/IconsPanelView;->mClockwise:Z

    if-eqz v5, :cond_1

    .end local v1           #deltaTime:I
    :goto_0
    mul-int/lit16 v5, v1, 0x12c

    div-int/lit16 v5, v5, 0x3e8

    add-int v0, v4, v5

    .line 180
    .local v0, degree:I
    if-ltz v0, :cond_2

    rem-int/lit16 v0, v0, 0x168

    .line 181
    :goto_1
    iput v0, p0, Lcom/oppo/camera/setting/IconsPanelView;->mCurrentDegree:I

    .line 182
    invoke-virtual {p0}, Lcom/oppo/camera/setting/IconsPanelView;->invalidate()V

    .line 187
    .end local v0           #degree:I
    .end local v2           #time:J
    :cond_0
    :goto_2
    return-void

    .line 179
    .restart local v1       #deltaTime:I
    .restart local v2       #time:J
    :cond_1
    neg-int v1, v1

    goto :goto_0

    .line 180
    .end local v1           #deltaTime:I
    .restart local v0       #degree:I
    :cond_2
    rem-int/lit16 v4, v0, 0x168

    add-int/lit16 v0, v4, 0x168

    goto :goto_1

    .line 184
    .end local v0           #degree:I
    :cond_3
    iget v4, p0, Lcom/oppo/camera/setting/IconsPanelView;->mTargetDegree:I

    iput v4, p0, Lcom/oppo/camera/setting/IconsPanelView;->mCurrentDegree:I

    goto :goto_2
.end method

.method private drawIcon(Landroid/graphics/Canvas;I)V
    .locals 3
    .parameter "canvas"
    .parameter "index"

    .prologue
    .line 163
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 164
    invoke-direct {p0, p2}, Lcom/oppo/camera/setting/IconsPanelView;->getMatrix(I)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 165
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 166
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelView;->mSettingItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/setting/CameraSettingItem;

    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelView;->mIconPositionsList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/setting/IconsPanelController$IconPosition;

    iget v2, v1, Lcom/oppo/camera/setting/IconsPanelController$IconPosition;->mLeft:F

    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelView;->mIconPositionsList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/setting/IconsPanelController$IconPosition;

    iget v1, v1, Lcom/oppo/camera/setting/IconsPanelController$IconPosition;->mTop:F

    invoke-virtual {v0, p1, v2, v1}, Lcom/oppo/camera/setting/CameraSettingItem;->draw(Landroid/graphics/Canvas;FF)V

    .line 167
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 168
    return-void
.end method

.method private getMatrix(I)Landroid/graphics/Matrix;
    .locals 7
    .parameter "index"

    .prologue
    const/high16 v6, 0x41f0

    .line 221
    iget-object v5, p0, Lcom/oppo/camera/setting/IconsPanelView;->mIconPositionsList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oppo/camera/setting/IconsPanelController$IconPosition;

    iget v5, v5, Lcom/oppo/camera/setting/IconsPanelController$IconPosition;->mLeft:F

    add-float v1, v5, v6

    .line 222
    .local v1, centralX:F
    iget-object v5, p0, Lcom/oppo/camera/setting/IconsPanelView;->mIconPositionsList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oppo/camera/setting/IconsPanelController$IconPosition;

    iget v5, v5, Lcom/oppo/camera/setting/IconsPanelController$IconPosition;->mTop:F

    add-float v2, v5, v6

    .line 223
    .local v2, centralY:F
    const/4 v5, 0x2

    new-array v3, v5, [I

    .line 224
    .local v3, location:[I
    invoke-virtual {p0, v3}, Lcom/oppo/camera/setting/IconsPanelView;->getLocationOnScreen([I)V

    .line 230
    invoke-direct {p0}, Lcom/oppo/camera/setting/IconsPanelView;->calculateDegree()V

    .line 231
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    .line 232
    .local v0, camera:Landroid/graphics/Camera;
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 234
    .local v4, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 235
    iget v5, p0, Lcom/oppo/camera/setting/IconsPanelView;->mCurrentDegree:I

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Landroid/graphics/Camera;->rotateZ(F)V

    .line 236
    invoke-virtual {v0, v4}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 237
    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 239
    neg-float v5, v1

    neg-float v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 240
    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 242
    return-object v4
.end method

.method private init()V
    .locals 3

    .prologue
    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/setting/IconsPanelView;->mUnselectedIconList:Ljava/util/ArrayList;

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/setting/IconsPanelView;->mSelectedIconList:Ljava/util/ArrayList;

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/setting/IconsPanelView;->mIconPositionsList:Ljava/util/ArrayList;

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/setting/IconsPanelView;->mSettingItems:Ljava/util/ArrayList;

    .line 88
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/oppo/camera/setting/IconsPanelView;->CAMERA_SETTINGS_COUNT:I

    sget v2, Lcom/oppo/camera/setting/IconsPanelView;->VIDEO_SETTINGS_COUNT:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelView;->mIconPositionsList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/oppo/camera/setting/IconsPanelController;->getIconPositionInstance()Lcom/oppo/camera/setting/IconsPanelController$IconPosition;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/setting/IconsPanelView;->mPaint:Landroid/graphics/Paint;

    .line 94
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    return-void
.end method

.method private initIconList()V
    .locals 10

    .prologue
    .line 103
    iget-object v9, p0, Lcom/oppo/camera/setting/IconsPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 104
    .local v0, assetManager:Landroid/content/res/AssetManager;
    iget-boolean v9, p0, Lcom/oppo/camera/setting/IconsPanelView;->mIsCameraMode:Z

    if-eqz v9, :cond_0

    sget v3, Lcom/oppo/camera/setting/IconsPanelView;->CAMERA_SETTINGS_COUNT:I

    .line 105
    .local v3, iconCount:I
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 107
    :try_start_0
    iget-boolean v9, p0, Lcom/oppo/camera/setting/IconsPanelView;->mIsCameraMode:Z

    if-eqz v9, :cond_1

    sget-object v9, Lcom/oppo/camera/setting/IconsPanelView;->mCameraSettingFocusedIcons:[Ljava/lang/String;

    aget-object v9, v9, v2

    :goto_2
    invoke-virtual {v0, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 109
    .local v4, isSlected:Ljava/io/InputStream;
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 110
    .local v6, selectedBitmap:Landroid/graphics/Bitmap;
    iget-object v9, p0, Lcom/oppo/camera/setting/IconsPanelView;->mSelectedIconList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 112
    iget-boolean v9, p0, Lcom/oppo/camera/setting/IconsPanelView;->mIsCameraMode:Z

    if-eqz v9, :cond_2

    sget-object v9, Lcom/oppo/camera/setting/IconsPanelView;->mCameraSettingUnFocusedIcons:[Ljava/lang/String;

    aget-object v9, v9, v2

    :goto_3
    invoke-virtual {v0, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 114
    .local v5, isUnselected:Ljava/io/InputStream;
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 115
    .local v8, unselectedBitmap:Landroid/graphics/Bitmap;
    iget-object v9, p0, Lcom/oppo/camera/setting/IconsPanelView;->mUnselectedIconList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 117
    new-instance v7, Lcom/oppo/camera/setting/CameraSettingItem;

    invoke-direct {v7, p0, v6, v8}, Lcom/oppo/camera/setting/CameraSettingItem;-><init>(Lcom/oppo/camera/setting/IconsPanelView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 118
    .local v7, settingItem:Lcom/oppo/camera/setting/CameraSettingItem;
    iget-object v9, p0, Lcom/oppo/camera/setting/IconsPanelView;->mSettingItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v4           #isSlected:Ljava/io/InputStream;
    .end local v5           #isUnselected:Ljava/io/InputStream;
    .end local v6           #selectedBitmap:Landroid/graphics/Bitmap;
    .end local v7           #settingItem:Lcom/oppo/camera/setting/CameraSettingItem;
    .end local v8           #unselectedBitmap:Landroid/graphics/Bitmap;
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 104
    .end local v2           #i:I
    .end local v3           #iconCount:I
    :cond_0
    sget v3, Lcom/oppo/camera/setting/IconsPanelView;->VIDEO_SETTINGS_COUNT:I

    goto :goto_0

    .line 107
    .restart local v2       #i:I
    .restart local v3       #iconCount:I
    :cond_1
    :try_start_1
    sget-object v9, Lcom/oppo/camera/setting/IconsPanelView;->mVideoSettingFocusedIcons:[Ljava/lang/String;

    aget-object v9, v9, v2

    goto :goto_2

    .line 112
    .restart local v4       #isSlected:Ljava/io/InputStream;
    .restart local v6       #selectedBitmap:Landroid/graphics/Bitmap;
    :cond_2
    sget-object v9, Lcom/oppo/camera/setting/IconsPanelView;->mVideoSettingUnFocusedIcons:[Ljava/lang/String;

    aget-object v9, v9, v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 120
    .end local v4           #isSlected:Ljava/io/InputStream;
    .end local v6           #selectedBitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 121
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 124
    .end local v1           #e:Ljava/io/IOException;
    :cond_3
    return-void
.end method


# virtual methods
.method public getIconPositionsList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/camera/setting/IconsPanelController$IconPosition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelView;->mIconPositionsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSettingItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/camera/setting/CameraSettingItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelView;->mSettingItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 136
    iget-boolean v1, p0, Lcom/oppo/camera/setting/IconsPanelView;->mIsCameraMode:Z

    if-eqz v1, :cond_2

    .line 137
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/oppo/camera/setting/IconsPanelView;->CAMERA_SETTINGS_COUNT:I

    if-ge v0, v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelView;->mSelectedIconList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget v2, Lcom/oppo/camera/setting/IconsPanelView;->CAMERA_SETTINGS_COUNT:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelView;->mUnselectedIconList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget v2, Lcom/oppo/camera/setting/IconsPanelView;->CAMERA_SETTINGS_COUNT:I

    if-eq v1, v2, :cond_1

    .line 157
    :cond_0
    return-void

    .line 144
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/setting/IconsPanelView;->drawIcon(Landroid/graphics/Canvas;I)V

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    .end local v0           #i:I
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    sget v1, Lcom/oppo/camera/setting/IconsPanelView;->VIDEO_SETTINGS_COUNT:I

    if-ge v0, v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelView;->mSelectedIconList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget v2, Lcom/oppo/camera/setting/IconsPanelView;->VIDEO_SETTINGS_COUNT:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelView;->mUnselectedIconList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget v2, Lcom/oppo/camera/setting/IconsPanelView;->VIDEO_SETTINGS_COUNT:I

    if-ne v1, v2, :cond_0

    .line 154
    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/setting/IconsPanelView;->drawIcon(Landroid/graphics/Canvas;I)V

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/oppo/camera/setting/IconsPanelView;->postInvalidate()V

    .line 191
    return-void
.end method

.method public setDegree(I)V
    .locals 5
    .parameter "degree"

    .prologue
    .line 199
    if-ltz p1, :cond_0

    rem-int/lit16 p1, p1, 0x168

    .line 200
    :goto_0
    iget v1, p0, Lcom/oppo/camera/setting/IconsPanelView;->mTargetDegree:I

    if-ne p1, v1, :cond_1

    .line 217
    :goto_1
    return-void

    .line 199
    :cond_0
    rem-int/lit16 v1, p1, 0x168

    add-int/lit16 p1, v1, 0x168

    goto :goto_0

    .line 203
    :cond_1
    iput p1, p0, Lcom/oppo/camera/setting/IconsPanelView;->mTargetDegree:I

    .line 204
    iget v1, p0, Lcom/oppo/camera/setting/IconsPanelView;->mCurrentDegree:I

    iput v1, p0, Lcom/oppo/camera/setting/IconsPanelView;->mStartDegree:I

    .line 205
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/oppo/camera/setting/IconsPanelView;->mAnimationStartTime:J

    .line 207
    iget v1, p0, Lcom/oppo/camera/setting/IconsPanelView;->mTargetDegree:I

    iget v2, p0, Lcom/oppo/camera/setting/IconsPanelView;->mCurrentDegree:I

    sub-int v0, v1, v2

    .line 208
    .local v0, diff:I
    if-ltz v0, :cond_3

    .line 212
    :goto_2
    const/16 v1, 0xb4

    if-le v0, v1, :cond_2

    add-int/lit16 v0, v0, -0x168

    .line 214
    :cond_2
    if-ltz v0, :cond_4

    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, p0, Lcom/oppo/camera/setting/IconsPanelView;->mClockwise:Z

    .line 215
    iget-wide v1, p0, Lcom/oppo/camera/setting/IconsPanelView;->mAnimationStartTime:J

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    div-int/lit16 v3, v3, 0x12c

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/oppo/camera/setting/IconsPanelView;->mAnimationEndTime:J

    .line 216
    invoke-virtual {p0}, Lcom/oppo/camera/setting/IconsPanelView;->invalidate()V

    goto :goto_1

    .line 208
    :cond_3
    add-int/lit16 v0, v0, 0x168

    goto :goto_2

    .line 214
    :cond_4
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public setMenuMode(Z)V
    .locals 0
    .parameter "mIsCameraMode"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/oppo/camera/setting/IconsPanelView;->mIsCameraMode:Z

    .line 99
    invoke-direct {p0}, Lcom/oppo/camera/setting/IconsPanelView;->initIconList()V

    .line 100
    return-void
.end method
