.class public Lcom/oppo/camera/utils/PlayEffectSound;
.super Ljava/lang/Object;
.source "PlayEffectSound.java"


# static fields
.field public static ON:Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mShutterSound:Ljava/lang/String;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStreamVolumeCurrent:F

.field private mStreamVolumeMax:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "on"

    sput-object v0, Lcom/oppo/camera/utils/PlayEffectSound;->ON:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "shutterSound"

    .prologue
    const/16 v3, 0x8

    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mSoundPoolMap:Ljava/util/HashMap;

    .line 25
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mSoundPool:Landroid/media/SoundPool;

    .line 26
    iput-object p1, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mShutterSound:Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mAudioManager:Landroid/media/AudioManager;

    .line 29
    const v0, 0x3f666666

    iget-object v1, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mStreamVolumeMax:F

    .line 30
    iget-object v0, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mStreamVolumeCurrent:F

    .line 31
    return-void
.end method


# virtual methods
.method public destory()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 73
    iget-object v0, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mSoundPoolMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 75
    iput-object v1, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mSoundPoolMap:Ljava/util/HashMap;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 79
    iput-object v1, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mSoundPool:Landroid/media/SoundPool;

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mStreamVolumeCurrent:F

    float-to-int v1, v1

    invoke-virtual {v0, v2, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 82
    return-void
.end method

.method public getRingerMode()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 61
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public loadCameraSound()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 34
    iget-object v0, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mSoundPoolMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mSoundPoolMap:Ljava/util/HashMap;

    .line 36
    iget-object v0, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mSoundPoolMap:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mContext:Landroid/content/Context;

    const v4, 0x7f050003

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mSoundPoolMap:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mContext:Landroid/content/Context;

    const v4, 0x7f050005

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mSoundPoolMap:Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mContext:Landroid/content/Context;

    const v4, 0x7f050004

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mSoundPoolMap:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mContext:Landroid/content/Context;

    const v4, 0x7f050006

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mSoundPoolMap:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mContext:Landroid/content/Context;

    const v4, 0x7f050008

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_0
    return-void
.end method

.method public loadLomoCameraSound()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 45
    iget-object v0, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mSoundPoolMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mSoundPoolMap:Ljava/util/HashMap;

    .line 47
    iget-object v0, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mSoundPoolMap:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mContext:Landroid/content/Context;

    const v4, 0x7f050001

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mSoundPoolMap:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mContext:Landroid/content/Context;

    const v4, 0x7f050003

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mSoundPoolMap:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mContext:Landroid/content/Context;

    const v4, 0x7f050006

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_0
    return-void
.end method

.method public playSound(I)V
    .locals 7
    .parameter "soundId"

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x0

    const v2, 0x3e99999a

    .line 66
    iget-object v0, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mShutterSound:Ljava/lang/String;

    sget-object v1, Lcom/oppo/camera/utils/PlayEffectSound;->ON:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mSoundPoolMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mStreamVolumeMax:F

    float-to-int v1, v1

    invoke-virtual {v0, v3, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 68
    iget-object v0, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/high16 v6, 0x3f80

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 71
    :cond_0
    return-void
.end method

.method public setShutterSound(Ljava/lang/String;)V
    .locals 0
    .parameter "shutterSound"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/oppo/camera/utils/PlayEffectSound;->mShutterSound:Ljava/lang/String;

    .line 55
    return-void
.end method
