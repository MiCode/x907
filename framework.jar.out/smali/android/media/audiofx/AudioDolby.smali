.class public Landroid/media/audiofx/AudioDolby;
.super Landroid/media/audiofx/AudioEffect;
.source "AudioDolby.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/AudioDolby$RecommendParmValue;,
        Landroid/media/audiofx/AudioDolby$SoundEffectParm;,
        Landroid/media/audiofx/AudioDolby$SoundEffect;
    }
.end annotation


# static fields
.field public static final BRIGHTNESS_LEVEL_SETTING:[I = null

.field public static final GEQ_ACTION:I = 0x14

.field public static final GEQ_ANIMATED:I = 0x15

.field public static final GEQ_BLUES:I = 0xb

.field public static final GEQ_CLASSIC:I = 0x5

.field public static final GEQ_COMEDY:I = 0x13

.field public static final GEQ_COSTOM:I = 0x1c

.field public static final GEQ_COUNTRY:I = 0x6

.field public static final GEQ_DANCE:I = 0x7

.field public static final GEQ_DRAMA:I = 0x18

.field public static final GEQ_ELECTRONIC:I = 0xc

.field public static final GEQ_HIPHOP:I = 0xa

.field public static final GEQ_INVALID:I = -0x1

.field public static final GEQ_JAZZ:I = 0x3

.field public static final GEQ_JUNGLE:I = 0x10

.field public static final GEQ_LATIN:I = 0xf

.field public static final GEQ_METAL:I = 0x8

.field public static final GEQ_MOVIE:I = 0x12

.field public static final GEQ_MUSICAL:I = 0x19

.field public static final GEQ_MUSIC_DEFAULT:I = 0x0

.field public static final GEQ_MUSIC_FLAT:I = 0x1

.field public static final GEQ_MV:I = 0x11

.field public static final GEQ_N:I = 0x1d

.field public static final GEQ_NEWS:I = 0x16

.field public static final GEQ_PODCAST:I = 0xe

.field public static final GEQ_POP:I = 0x4

.field public static final GEQ_RB:I = 0x9

.field public static final GEQ_ROCK:I = 0x2

.field public static final GEQ_SPORTS:I = 0x17

.field public static final GEQ_URBAN:I = 0xd

.field public static final GEQ_VARIIETY:I = 0x1a

.field public static final GEQ_VIDEO_FLAT:I = 0x1b

.field public static final HFE_LEVEL_SETTING:[I = null

.field public static final LEVEL_CLOSE:I = 0x3

.field public static final LEVEL_HARD:I = 0x2

.field public static final LEVEL_MIDDING:I = 0x1

.field public static final LEVEL_NORMAL:I = 0x0

.field public static final MODE_HEADPHONE:I = 0x0

.field public static final MODE_INVALID:I = -0x1

.field public static final MODE_SPEAKER:I = 0x1

.field public static final NB_LEVEL_SETTING_HEADPHONE:[I = null

.field public static final NB_LEVEL_SETTING_SPEAKER:[I = null

.field public static final PRESET:[[[I = null

.field public static final ROOM_LEVEL_SETTING:[I = null

.field public static final SSH_LEVEL_SETTING:[I = null

.field private static final TAG:Ljava/lang/String; = "AudioDolby"

.field public static final TYPE_MUSIC:I = 0x0

.field public static final TYPE_VIDEO:I = 0x1

.field public static final defaultSpeakerParam:[I

.field public static final lastSpeakerParam:[I


# instance fields
.field private mCurrentEQType:I

.field private mCurrentMode:I

.field private mEQType:I

.field private mFirstSetting:Z

.field private mHFELevel:I

.field private mMode:I

.field private mNBLevel:I

.field private mSSHLevel:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0xb

    const/4 v5, 0x3

    const/16 v4, 0xd

    .line 124
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/media/audiofx/AudioDolby;->NB_LEVEL_SETTING_HEADPHONE:[I

    .line 125
    new-array v0, v5, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/media/audiofx/AudioDolby;->NB_LEVEL_SETTING_SPEAKER:[I

    .line 126
    new-array v0, v5, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/media/audiofx/AudioDolby;->HFE_LEVEL_SETTING:[I

    .line 127
    new-array v0, v5, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroid/media/audiofx/AudioDolby;->SSH_LEVEL_SETTING:[I

    .line 129
    const/4 v0, 0x2

    new-array v0, v0, [[[I

    const/16 v1, 0x1c

    new-array v1, v1, [[I

    new-array v2, v4, [I

    fill-array-data v2, :array_4

    aput-object v2, v1, v7

    new-array v2, v4, [I

    fill-array-data v2, :array_5

    aput-object v2, v1, v8

    const/4 v2, 0x2

    new-array v3, v4, [I

    fill-array-data v3, :array_6

    aput-object v3, v1, v2

    new-array v2, v4, [I

    fill-array-data v2, :array_7

    aput-object v2, v1, v5

    const/4 v2, 0x4

    new-array v3, v4, [I

    fill-array-data v3, :array_8

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-array v3, v4, [I

    fill-array-data v3, :array_9

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-array v3, v4, [I

    fill-array-data v3, :array_a

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-array v3, v4, [I

    fill-array-data v3, :array_b

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-array v3, v4, [I

    fill-array-data v3, :array_c

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-array v3, v4, [I

    fill-array-data v3, :array_d

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-array v3, v4, [I

    fill-array-data v3, :array_e

    aput-object v3, v1, v2

    new-array v2, v4, [I

    fill-array-data v2, :array_f

    aput-object v2, v1, v6

    const/16 v2, 0xc

    new-array v3, v4, [I

    fill-array-data v3, :array_10

    aput-object v3, v1, v2

    new-array v2, v4, [I

    fill-array-data v2, :array_11

    aput-object v2, v1, v4

    const/16 v2, 0xe

    new-array v3, v4, [I

    fill-array-data v3, :array_12

    aput-object v3, v1, v2

    const/16 v2, 0xf

    new-array v3, v4, [I

    fill-array-data v3, :array_13

    aput-object v3, v1, v2

    const/16 v2, 0x10

    new-array v3, v4, [I

    fill-array-data v3, :array_14

    aput-object v3, v1, v2

    const/16 v2, 0x11

    new-array v3, v4, [I

    fill-array-data v3, :array_15

    aput-object v3, v1, v2

    const/16 v2, 0x12

    new-array v3, v4, [I

    fill-array-data v3, :array_16

    aput-object v3, v1, v2

    const/16 v2, 0x13

    new-array v3, v4, [I

    fill-array-data v3, :array_17

    aput-object v3, v1, v2

    const/16 v2, 0x14

    new-array v3, v4, [I

    fill-array-data v3, :array_18

    aput-object v3, v1, v2

    const/16 v2, 0x15

    new-array v3, v4, [I

    fill-array-data v3, :array_19

    aput-object v3, v1, v2

    const/16 v2, 0x16

    new-array v3, v4, [I

    fill-array-data v3, :array_1a

    aput-object v3, v1, v2

    const/16 v2, 0x17

    new-array v3, v4, [I

    fill-array-data v3, :array_1b

    aput-object v3, v1, v2

    const/16 v2, 0x18

    new-array v3, v4, [I

    fill-array-data v3, :array_1c

    aput-object v3, v1, v2

    const/16 v2, 0x19

    new-array v3, v4, [I

    fill-array-data v3, :array_1d

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    new-array v3, v4, [I

    fill-array-data v3, :array_1e

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    new-array v3, v4, [I

    fill-array-data v3, :array_1f

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    const/16 v1, 0x1c

    new-array v1, v1, [[I

    new-array v2, v4, [I

    fill-array-data v2, :array_20

    aput-object v2, v1, v7

    new-array v2, v4, [I

    fill-array-data v2, :array_21

    aput-object v2, v1, v8

    const/4 v2, 0x2

    new-array v3, v4, [I

    fill-array-data v3, :array_22

    aput-object v3, v1, v2

    new-array v2, v4, [I

    fill-array-data v2, :array_23

    aput-object v2, v1, v5

    const/4 v2, 0x4

    new-array v3, v4, [I

    fill-array-data v3, :array_24

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-array v3, v4, [I

    fill-array-data v3, :array_25

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-array v3, v4, [I

    fill-array-data v3, :array_26

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-array v3, v4, [I

    fill-array-data v3, :array_27

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-array v3, v4, [I

    fill-array-data v3, :array_28

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-array v3, v4, [I

    fill-array-data v3, :array_29

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-array v3, v4, [I

    fill-array-data v3, :array_2a

    aput-object v3, v1, v2

    new-array v2, v4, [I

    fill-array-data v2, :array_2b

    aput-object v2, v1, v6

    const/16 v2, 0xc

    new-array v3, v4, [I

    fill-array-data v3, :array_2c

    aput-object v3, v1, v2

    new-array v2, v4, [I

    fill-array-data v2, :array_2d

    aput-object v2, v1, v4

    const/16 v2, 0xe

    new-array v3, v4, [I

    fill-array-data v3, :array_2e

    aput-object v3, v1, v2

    const/16 v2, 0xf

    new-array v3, v4, [I

    fill-array-data v3, :array_2f

    aput-object v3, v1, v2

    const/16 v2, 0x10

    new-array v3, v4, [I

    fill-array-data v3, :array_30

    aput-object v3, v1, v2

    const/16 v2, 0x11

    new-array v3, v4, [I

    fill-array-data v3, :array_31

    aput-object v3, v1, v2

    const/16 v2, 0x12

    new-array v3, v4, [I

    fill-array-data v3, :array_32

    aput-object v3, v1, v2

    const/16 v2, 0x13

    new-array v3, v4, [I

    fill-array-data v3, :array_33

    aput-object v3, v1, v2

    const/16 v2, 0x14

    new-array v3, v4, [I

    fill-array-data v3, :array_34

    aput-object v3, v1, v2

    const/16 v2, 0x15

    new-array v3, v4, [I

    fill-array-data v3, :array_35

    aput-object v3, v1, v2

    const/16 v2, 0x16

    new-array v3, v4, [I

    fill-array-data v3, :array_36

    aput-object v3, v1, v2

    const/16 v2, 0x17

    new-array v3, v4, [I

    fill-array-data v3, :array_37

    aput-object v3, v1, v2

    const/16 v2, 0x18

    new-array v3, v4, [I

    fill-array-data v3, :array_38

    aput-object v3, v1, v2

    const/16 v2, 0x19

    new-array v3, v4, [I

    fill-array-data v3, :array_39

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    new-array v3, v4, [I

    fill-array-data v3, :array_3a

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    new-array v3, v4, [I

    fill-array-data v3, :array_3b

    aput-object v3, v1, v2

    aput-object v1, v0, v8

    sput-object v0, Landroid/media/audiofx/AudioDolby;->PRESET:[[[I

    .line 211
    new-array v0, v6, [I

    fill-array-data v0, :array_3c

    sput-object v0, Landroid/media/audiofx/AudioDolby;->lastSpeakerParam:[I

    .line 212
    new-array v0, v6, [I

    fill-array-data v0, :array_3d

    sput-object v0, Landroid/media/audiofx/AudioDolby;->defaultSpeakerParam:[I

    .line 633
    new-array v0, v5, [I

    fill-array-data v0, :array_3e

    sput-object v0, Landroid/media/audiofx/AudioDolby;->ROOM_LEVEL_SETTING:[I

    .line 634
    new-array v0, v5, [I

    fill-array-data v0, :array_3f

    sput-object v0, Landroid/media/audiofx/AudioDolby;->BRIGHTNESS_LEVEL_SETTING:[I

    return-void

    .line 124
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 125
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 126
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 127
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 129
    :array_4
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xfct 0xfft 0xfft 0xfft
        0xfct 0xfft 0xfft 0xfft
        0xf8t 0xfft 0xfft 0xfft
        0x1t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xfct 0xfft 0xfft 0xfft
        0xf4t 0xfft 0xfft 0xfft
        0xf8t 0xfft 0xfft 0xfft
        0x9t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xf8t 0xfft 0xfft 0xfft
        0xf4t 0xfft 0xfft 0xfft
        0xf0t 0xfft 0xfft 0xfft
        0xfdt 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xf8t 0xfft 0xfft 0xfft
        0xect 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xfct 0xfft 0xfft 0xfft
        0xf4t 0xfft 0xfft 0xfft
        0xf4t 0xfft 0xfft 0xfft
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xfct 0xfft 0xfft 0xfft
        0xf8t 0xfft 0xfft 0xfft
        0xf8t 0xfft 0xfft 0xfft
        0xf0t 0xfft 0xfft 0xfft
        0xfdt 0xfft 0xfft 0xfft
        0xf8t 0xfft 0xfft 0xfft
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_b
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xe4t 0xfft 0xfft 0xfft
        0xe0t 0xfft 0xfft 0xfft
        0xe8t 0xfft 0xfft 0xfft
        0xdt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_c
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xe8t 0xfft 0xfft 0xfft
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_d
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xf8t 0xfft 0xfft 0xfft
        0xf8t 0xfft 0xfft 0xfft
        0xfct 0xfft 0xfft 0xfft
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_e
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xfct 0xfft 0xfft 0xfft
        0xfct 0xfft 0xfft 0xfft
        0xf4t 0xfft 0xfft 0xfft
        0xf8t 0xfft 0xfft 0xfft
        0xfdt 0xfft 0xfft 0xfft
        0xfct 0xfft 0xfft 0xfft
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_f
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xf8t 0xfft 0xfft 0xfft
        0xf4t 0xfft 0xfft 0xfft
        0xf8t 0xfft 0xfft 0xfft
        0x5t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_10
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xf4t 0xfft 0xfft 0xfft
        0xf8t 0xfft 0xfft 0xfft
        0xf0t 0xfft 0xfft 0xfft
        0xfdt 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_11
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xfct 0xfft 0xfft 0xfft
        0xf8t 0xfft 0xfft 0xfft
        0xf4t 0xfft 0xfft 0xfft
        0xf8t 0xfft 0xfft 0xfft
        0xfdt 0xfft 0xfft 0xfft
        0xfct 0xfft 0xfft 0xfft
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_12
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xect 0xfft 0xfft 0xfft
        0xf4t 0xfft 0xfft 0xfft
        0xf4t 0xfft 0xfft 0xfft
        0xf8t 0xfft 0xfft 0xfft
        0xf8t 0xfft 0xfft 0xfft
        0x9t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_13
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xfct 0xfft 0xfft 0xfft
        0xf4t 0xfft 0xfft 0xfft
        0xf4t 0xfft 0xfft 0xfft
        0xf0t 0xfft 0xfft 0xfft
        0xfdt 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_14
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xe0t 0xfft 0xfft 0xfft
        0xfat 0xfft 0xfft 0xfft
        0xf6t 0xfft 0xfft 0xfft
        0xdt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_15
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xf4t 0xfft 0xfft 0xfft
        0x3t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_16
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xf8t 0xfft 0xfft 0xfft
        0xf0t 0xfft 0xfft 0xfft
        0xect 0xfft 0xfft 0xfft
        0xf8t 0xfft 0xfft 0xfft
        0x8t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_17
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xf8t 0xfft 0xfft 0xfft
        0xfct 0xfft 0xfft 0xfft
        0x4t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xfet 0xfft 0xfft 0xfft
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_18
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xfct 0xfft 0xfft 0xfft
        0x4t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xf8t 0xfft 0xfft 0xfft
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_19
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xfct 0xfft 0xfft 0xfft
        0xf8t 0xfft 0xfft 0xfft
        0xfct 0xfft 0xfft 0xfft
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1a
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xf8t 0xfft 0xfft 0xfft
        0xfct 0xfft 0xfft 0xfft
        0x4t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xf8t 0xfft 0xfft 0xfft
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1b
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xfct 0xfft 0xfft 0xfft
        0xf8t 0xfft 0xfft 0xfft
        0xfct 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xfct 0xfft 0xfft 0xfft
        0x4t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xf8t 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0xf8t 0xfft 0xfft 0xfft
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1d
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xfct 0xfft 0xfft 0xfft
        0xf8t 0xfft 0xfft 0xfft
        0xfct 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1e
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xf8t 0xfft 0xfft 0xfft
        0xfct 0xfft 0xfft 0xfft
        0x4t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xf8t 0xfft 0xfft 0xfft
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1f
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_20
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_21
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_22
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xf8t 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_23
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xfct 0xfft 0xfft 0xfft
        0xf8t 0xfft 0xfft 0xfft
        0xf8t 0xfft 0xfft 0xfft
        0xfct 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_24
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xf8t 0xfft 0xfft 0xfft
        0xect 0xfft 0xfft 0xfft
        0x4t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_25
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xf8t 0xfft 0xfft 0xfft
        0xfct 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_26
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xfct 0xfft 0xfft 0xfft
        0xfct 0xfft 0xfft 0xfft
        0xfct 0xfft 0xfft 0xfft
        0xf8t 0xfft 0xfft 0xfft
        0xfct 0xfft 0xfft 0xfft
        0xf8t 0xfft 0xfft 0xfft
        0xft 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_27
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xe8t 0xfft 0xfft 0xfft
        0xe4t 0xfft 0xfft 0xfft
        0xf0t 0xfft 0xfft 0xfft
        0xct 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_28
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xect 0xfft 0xfft 0xfft
        0x6t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_29
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xfct 0xfft 0xfft 0xfft
        0xfct 0xfft 0xfft 0xfft
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_2a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xfct 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0xf8t 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0xfct 0xfft 0xfft 0xfft
        0xfct 0xfft 0xfft 0xfft
        0xft 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_2b
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xfct 0xfft 0xfft 0xfft
        0xf8t 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_2c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xf8t 0xfft 0xfft 0xfft
        0xfct 0xfft 0xfft 0xfft
        0xf8t 0xfft 0xfft 0xfft
        0xfct 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_2d
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xfct 0xfft 0xfft 0xfft
        0xfct 0xfft 0xfft 0xfft
        0x8t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xfct 0xfft 0xfft 0xfft
        0xfct 0xfft 0xfft 0xfft
        0xft 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_2e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xect 0xfft 0xfft 0xfft
        0xf4t 0xfft 0xfft 0xfft
        0xf8t 0xfft 0xfft 0xfft
        0xfct 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_2f
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xfct 0xfft 0xfft 0xfft
        0xf8t 0xfft 0xfft 0xfft
        0xf8t 0xfft 0xfft 0xfft
        0xf8t 0xfft 0xfft 0xfft
        0xfct 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_30
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xe4t 0xfft 0xfft 0xfft
        0xfet 0xfft 0xfft 0xfft
        0xfet 0xfft 0xfft 0xfft
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_31
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_32
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_33
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xf8t 0xfft 0xfft 0xfft
        0xfct 0xfft 0xfft 0xfft
        0x4t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xfet 0xfft 0xfft 0xfft
        0xet 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_34
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xfct 0xfft 0xfft 0xfft
        0x4t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xf8t 0xfft 0xfft 0xfft
        0xet 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_35
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xfct 0xfft 0xfft 0xfft
        0xf8t 0xfft 0xfft 0xfft
        0xfct 0xfft 0xfft 0xfft
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_36
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xf8t 0xfft 0xfft 0xfft
        0xfct 0xfft 0xfft 0xfft
        0x4t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xf8t 0xfft 0xfft 0xfft
        0xet 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_37
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xfct 0xfft 0xfft 0xfft
        0xf8t 0xfft 0xfft 0xfft
        0xfct 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_38
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xfct 0xfft 0xfft 0xfft
        0x4t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xf8t 0xfft 0xfft 0xfft
        0xet 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_39
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xfct 0xfft 0xfft 0xfft
        0xf8t 0xfft 0xfft 0xfft
        0xfct 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_3a
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xf8t 0xfft 0xfft 0xfft
        0xfct 0xfft 0xfft 0xfft
        0x4t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xf8t 0xfft 0xfft 0xfft
        0xet 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_3b
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 211
    :array_3c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 212
    :array_3d
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 633
    :array_3e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 634
    :array_3f
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 5
    .parameter "priority"
    .parameter "audioSession"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 71
    sget-object v0, Landroid/media/audiofx/AudioDolby;->EFFECT_TYPE_AUDIODOLBY:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/AudioDolby;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    .line 201
    iput v4, p0, Landroid/media/audiofx/AudioDolby;->mMode:I

    .line 202
    iput v2, p0, Landroid/media/audiofx/AudioDolby;->mType:I

    .line 203
    iput v3, p0, Landroid/media/audiofx/AudioDolby;->mEQType:I

    .line 204
    iput v3, p0, Landroid/media/audiofx/AudioDolby;->mCurrentMode:I

    .line 205
    iput v3, p0, Landroid/media/audiofx/AudioDolby;->mCurrentEQType:I

    .line 206
    iput v2, p0, Landroid/media/audiofx/AudioDolby;->mNBLevel:I

    .line 207
    iput v2, p0, Landroid/media/audiofx/AudioDolby;->mHFELevel:I

    .line 208
    iput v2, p0, Landroid/media/audiofx/AudioDolby;->mSSHLevel:I

    .line 209
    iput-boolean v4, p0, Landroid/media/audiofx/AudioDolby;->mFirstSetting:Z

    .line 72
    return-void
.end method

.method private _SoundEffectEnable(II)V
    .locals 1
    .parameter "se"
    .parameter "enable"

    .prologue
    .line 588
    invoke-virtual {p0, p1, p2}, Landroid/media/audiofx/AudioDolby;->setParameter(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioDolby;->checkStatus(I)V

    .line 589
    return-void
.end method

.method private _updateSetting()Z
    .locals 9

    .prologue
    const/16 v8, 0x9

    const/4 v7, 0x2

    const/4 v1, 0x0

    const/4 v6, 0x7

    const/4 v0, 0x1

    .line 452
    const-string v2, "AudioDolby"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateSetting: mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/audiofx/AudioDolby;->mMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  EQ type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/audiofx/AudioDolby;->mEQType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget v2, p0, Landroid/media/audiofx/AudioDolby;->mMode:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Landroid/media/audiofx/AudioDolby;->mEQType:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    :cond_0
    move v0, v1

    .line 580
    :goto_0
    return v0

    .line 456
    :cond_1
    iget v2, p0, Landroid/media/audiofx/AudioDolby;->mCurrentEQType:I

    iget v3, p0, Landroid/media/audiofx/AudioDolby;->mEQType:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/media/audiofx/AudioDolby;->mMode:I

    iget v3, p0, Landroid/media/audiofx/AudioDolby;->mCurrentMode:I

    if-eq v2, v3, :cond_6

    .line 458
    :cond_2
    iget v2, p0, Landroid/media/audiofx/AudioDolby;->mEQType:I

    const/16 v3, 0x1c

    if-ne v2, v3, :cond_4

    .line 460
    iget v2, p0, Landroid/media/audiofx/AudioDolby;->mMode:I

    if-nez v2, :cond_3

    .line 462
    const/16 v2, 0xc

    invoke-direct {p0, v2, v1}, Landroid/media/audiofx/AudioDolby;->_SoundEffectEnable(II)V

    .line 464
    :cond_3
    invoke-direct {p0, v6, v0}, Landroid/media/audiofx/AudioDolby;->_SoundEffectEnable(II)V

    .line 465
    invoke-virtual {p0, v6, v0, v6}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 466
    iget v1, p0, Landroid/media/audiofx/AudioDolby;->mEQType:I

    iput v1, p0, Landroid/media/audiofx/AudioDolby;->mCurrentEQType:I

    .line 467
    iget v1, p0, Landroid/media/audiofx/AudioDolby;->mMode:I

    iput v1, p0, Landroid/media/audiofx/AudioDolby;->mCurrentMode:I

    goto :goto_0

    .line 472
    :cond_4
    iget v2, p0, Landroid/media/audiofx/AudioDolby;->mType:I

    if-ne v2, v0, :cond_5

    iget v2, p0, Landroid/media/audiofx/AudioDolby;->mEQType:I

    if-ne v2, v0, :cond_5

    .line 473
    const/16 v2, 0x1b

    iput v2, p0, Landroid/media/audiofx/AudioDolby;->mEQType:I

    .line 476
    :cond_5
    const/4 v2, 0x4

    sget-object v3, Landroid/media/audiofx/AudioDolby;->PRESET:[[[I

    iget v4, p0, Landroid/media/audiofx/AudioDolby;->mMode:I

    aget-object v3, v3, v4

    iget v4, p0, Landroid/media/audiofx/AudioDolby;->mEQType:I

    aget-object v3, v3, v4

    aget v3, v3, v1

    invoke-direct {p0, v2, v3}, Landroid/media/audiofx/AudioDolby;->_SoundEffectEnable(II)V

    .line 477
    const/4 v2, 0x4

    sget-object v3, Landroid/media/audiofx/AudioDolby;->PRESET:[[[I

    iget v4, p0, Landroid/media/audiofx/AudioDolby;->mMode:I

    aget-object v3, v3, v4

    iget v4, p0, Landroid/media/audiofx/AudioDolby;->mEQType:I

    aget-object v3, v3, v4

    aget v3, v3, v0

    invoke-virtual {p0, v2, v0, v3}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 478
    const/4 v2, 0x4

    sget-object v3, Landroid/media/audiofx/AudioDolby;->PRESET:[[[I

    iget v4, p0, Landroid/media/audiofx/AudioDolby;->mMode:I

    aget-object v3, v3, v4

    iget v4, p0, Landroid/media/audiofx/AudioDolby;->mEQType:I

    aget-object v3, v3, v4

    aget v3, v3, v7

    invoke-virtual {p0, v2, v7, v3}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 479
    sget-object v2, Landroid/media/audiofx/AudioDolby;->PRESET:[[[I

    iget v3, p0, Landroid/media/audiofx/AudioDolby;->mMode:I

    aget-object v2, v2, v3

    iget v3, p0, Landroid/media/audiofx/AudioDolby;->mEQType:I

    aget-object v2, v2, v3

    const/4 v3, 0x3

    aget v2, v2, v3

    invoke-virtual {p0, v6, v0, v2}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 480
    const/4 v2, 0x4

    sget-object v3, Landroid/media/audiofx/AudioDolby;->PRESET:[[[I

    iget v4, p0, Landroid/media/audiofx/AudioDolby;->mMode:I

    aget-object v3, v3, v4

    iget v4, p0, Landroid/media/audiofx/AudioDolby;->mEQType:I

    aget-object v3, v3, v4

    const/4 v4, 0x4

    aget v3, v3, v4

    invoke-virtual {p0, v6, v2, v3}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 481
    const/4 v2, 0x5

    sget-object v3, Landroid/media/audiofx/AudioDolby;->PRESET:[[[I

    iget v4, p0, Landroid/media/audiofx/AudioDolby;->mMode:I

    aget-object v3, v3, v4

    iget v4, p0, Landroid/media/audiofx/AudioDolby;->mEQType:I

    aget-object v3, v3, v4

    const/4 v4, 0x5

    aget v3, v3, v4

    invoke-virtual {p0, v6, v2, v3}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 482
    const/4 v2, 0x6

    sget-object v3, Landroid/media/audiofx/AudioDolby;->PRESET:[[[I

    iget v4, p0, Landroid/media/audiofx/AudioDolby;->mMode:I

    aget-object v3, v3, v4

    iget v4, p0, Landroid/media/audiofx/AudioDolby;->mEQType:I

    aget-object v3, v3, v4

    const/4 v4, 0x6

    aget v3, v3, v4

    invoke-virtual {p0, v6, v2, v3}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 483
    sget-object v2, Landroid/media/audiofx/AudioDolby;->PRESET:[[[I

    iget v3, p0, Landroid/media/audiofx/AudioDolby;->mMode:I

    aget-object v2, v2, v3

    iget v3, p0, Landroid/media/audiofx/AudioDolby;->mEQType:I

    aget-object v2, v2, v3

    aget v2, v2, v6

    invoke-virtual {p0, v6, v6, v2}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 484
    const/16 v2, 0x8

    sget-object v3, Landroid/media/audiofx/AudioDolby;->PRESET:[[[I

    iget v4, p0, Landroid/media/audiofx/AudioDolby;->mMode:I

    aget-object v3, v3, v4

    iget v4, p0, Landroid/media/audiofx/AudioDolby;->mEQType:I

    aget-object v3, v3, v4

    const/16 v4, 0x8

    aget v3, v3, v4

    invoke-virtual {p0, v6, v2, v3}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 485
    sget-object v2, Landroid/media/audiofx/AudioDolby;->PRESET:[[[I

    iget v3, p0, Landroid/media/audiofx/AudioDolby;->mMode:I

    aget-object v2, v2, v3

    iget v3, p0, Landroid/media/audiofx/AudioDolby;->mEQType:I

    aget-object v2, v2, v3

    aget v2, v2, v8

    invoke-virtual {p0, v6, v8, v2}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 486
    const/16 v2, 0xa

    sget-object v3, Landroid/media/audiofx/AudioDolby;->PRESET:[[[I

    iget v4, p0, Landroid/media/audiofx/AudioDolby;->mMode:I

    aget-object v3, v3, v4

    iget v4, p0, Landroid/media/audiofx/AudioDolby;->mEQType:I

    aget-object v3, v3, v4

    const/16 v4, 0xa

    aget v3, v3, v4

    invoke-virtual {p0, v6, v2, v3}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 487
    const/4 v2, 0x6

    sget-object v3, Landroid/media/audiofx/AudioDolby;->PRESET:[[[I

    iget v4, p0, Landroid/media/audiofx/AudioDolby;->mMode:I

    aget-object v3, v3, v4

    iget v4, p0, Landroid/media/audiofx/AudioDolby;->mEQType:I

    aget-object v3, v3, v4

    const/16 v4, 0xb

    aget v3, v3, v4

    invoke-virtual {p0, v2, v0, v3}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 488
    const/4 v2, 0x6

    const/4 v3, 0x3

    sget-object v4, Landroid/media/audiofx/AudioDolby;->PRESET:[[[I

    iget v5, p0, Landroid/media/audiofx/AudioDolby;->mMode:I

    aget-object v4, v4, v5

    iget v5, p0, Landroid/media/audiofx/AudioDolby;->mEQType:I

    aget-object v4, v4, v5

    const/16 v5, 0xc

    aget v4, v4, v5

    invoke-virtual {p0, v2, v3, v4}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 490
    iget v2, p0, Landroid/media/audiofx/AudioDolby;->mMode:I

    if-nez v2, :cond_9

    .line 492
    const/16 v2, 0xc

    invoke-direct {p0, v2, v1}, Landroid/media/audiofx/AudioDolby;->_SoundEffectEnable(II)V

    .line 493
    invoke-direct {p0, v8, v0}, Landroid/media/audiofx/AudioDolby;->_SoundEffectEnable(II)V

    .line 494
    iget v2, p0, Landroid/media/audiofx/AudioDolby;->mType:I

    if-nez v2, :cond_8

    .line 496
    invoke-direct {p0, v8, v1}, Landroid/media/audiofx/AudioDolby;->_SoundEffectEnable(II)V

    .line 497
    const/16 v2, 0xa

    invoke-direct {p0, v2, v0}, Landroid/media/audiofx/AudioDolby;->_SoundEffectEnable(II)V

    .line 498
    const/16 v2, 0xa

    invoke-virtual {p0, v2, v0, v1}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 499
    invoke-virtual {p0, v8, v0, v1}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 500
    invoke-virtual {p0, v8, v7, v7}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 501
    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioDolby;->enableMSREnhanceMode(Z)V

    .line 502
    invoke-direct {p0, v6, v0}, Landroid/media/audiofx/AudioDolby;->_SoundEffectEnable(II)V

    .line 503
    const/4 v2, 0x3

    const/16 v3, 0x30

    invoke-virtual {p0, v6, v2, v3}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 504
    const/4 v2, -0x4

    invoke-virtual {p0, v6, v7, v2}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 505
    const/4 v2, 0x6

    invoke-direct {p0, v2, v0}, Landroid/media/audiofx/AudioDolby;->_SoundEffectEnable(II)V

    .line 506
    const/4 v2, 0x6

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v7, v3}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 507
    iget v2, p0, Landroid/media/audiofx/AudioDolby;->mEQType:I

    if-nez v2, :cond_7

    .line 578
    :cond_6
    :goto_1
    iget v1, p0, Landroid/media/audiofx/AudioDolby;->mEQType:I

    iput v1, p0, Landroid/media/audiofx/AudioDolby;->mCurrentEQType:I

    .line 579
    iget v1, p0, Landroid/media/audiofx/AudioDolby;->mMode:I

    iput v1, p0, Landroid/media/audiofx/AudioDolby;->mCurrentMode:I

    goto/16 :goto_0

    .line 512
    :cond_7
    iget v2, p0, Landroid/media/audiofx/AudioDolby;->mEQType:I

    if-ne v2, v0, :cond_6

    .line 514
    invoke-direct {p0, v6, v1}, Landroid/media/audiofx/AudioDolby;->_SoundEffectEnable(II)V

    goto :goto_1

    .line 517
    :cond_8
    iget v2, p0, Landroid/media/audiofx/AudioDolby;->mType:I

    if-ne v2, v0, :cond_6

    .line 519
    const/16 v2, 0xa

    invoke-direct {p0, v2, v1}, Landroid/media/audiofx/AudioDolby;->_SoundEffectEnable(II)V

    .line 520
    invoke-virtual {p0, v8, v0, v0}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 521
    invoke-virtual {p0, v8, v7, v0}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 522
    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioDolby;->enableMSREnhanceMode(Z)V

    .line 523
    invoke-direct {p0, v6, v0}, Landroid/media/audiofx/AudioDolby;->_SoundEffectEnable(II)V

    .line 524
    const/4 v2, 0x3

    const/16 v3, 0x30

    invoke-virtual {p0, v6, v2, v3}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 525
    invoke-virtual {p0, v6, v7, v1}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 526
    const/4 v2, 0x6

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v7, v3}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 527
    iget v2, p0, Landroid/media/audiofx/AudioDolby;->mEQType:I

    const/16 v3, 0x11

    if-ne v2, v3, :cond_6

    .line 529
    const/16 v2, 0xa

    invoke-direct {p0, v2, v0}, Landroid/media/audiofx/AudioDolby;->_SoundEffectEnable(II)V

    .line 530
    const/16 v2, 0xa

    invoke-virtual {p0, v2, v0, v0}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 531
    invoke-virtual {p0, v8, v0, v1}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 532
    invoke-virtual {p0, v8, v7, v7}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 533
    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioDolby;->enableMSREnhanceMode(Z)V

    goto :goto_1

    .line 537
    :cond_9
    iget v2, p0, Landroid/media/audiofx/AudioDolby;->mMode:I

    if-ne v2, v0, :cond_6

    .line 539
    const/16 v2, 0xc

    invoke-direct {p0, v2, v0}, Landroid/media/audiofx/AudioDolby;->_SoundEffectEnable(II)V

    .line 540
    invoke-direct {p0, v8, v1}, Landroid/media/audiofx/AudioDolby;->_SoundEffectEnable(II)V

    .line 541
    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioDolby;->enableMSREnhanceMode(Z)V

    .line 542
    iget v2, p0, Landroid/media/audiofx/AudioDolby;->mType:I

    if-nez v2, :cond_a

    .line 544
    const/16 v2, 0xc

    const/16 v3, 0x10

    invoke-virtual {p0, v2, v0, v3}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 545
    const/16 v2, 0xc

    const/16 v3, 0x10

    invoke-virtual {p0, v2, v7, v3}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 547
    const/16 v2, 0xa

    invoke-direct {p0, v2, v0}, Landroid/media/audiofx/AudioDolby;->_SoundEffectEnable(II)V

    .line 548
    const/16 v2, 0xa

    invoke-virtual {p0, v2, v0, v1}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 549
    invoke-direct {p0, v6, v0}, Landroid/media/audiofx/AudioDolby;->_SoundEffectEnable(II)V

    .line 550
    const/4 v2, 0x3

    const/16 v3, 0x30

    invoke-virtual {p0, v6, v2, v3}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 551
    invoke-virtual {p0, v6, v7, v1}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 552
    const/4 v2, 0x6

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v7, v3}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 553
    iget v2, p0, Landroid/media/audiofx/AudioDolby;->mEQType:I

    if-ne v2, v0, :cond_6

    .line 555
    invoke-direct {p0, v6, v1}, Landroid/media/audiofx/AudioDolby;->_SoundEffectEnable(II)V

    goto/16 :goto_1

    .line 558
    :cond_a
    iget v2, p0, Landroid/media/audiofx/AudioDolby;->mType:I

    if-ne v2, v0, :cond_6

    .line 560
    const/16 v2, 0xc

    const/16 v3, 0x18

    invoke-virtual {p0, v2, v0, v3}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 561
    const/16 v2, 0xc

    const/16 v3, 0x18

    invoke-virtual {p0, v2, v7, v3}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 562
    const/16 v2, 0xa

    invoke-direct {p0, v2, v0}, Landroid/media/audiofx/AudioDolby;->_SoundEffectEnable(II)V

    .line 563
    const/16 v2, 0xa

    invoke-virtual {p0, v2, v0, v1}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 564
    invoke-direct {p0, v6, v0}, Landroid/media/audiofx/AudioDolby;->_SoundEffectEnable(II)V

    .line 565
    const/4 v2, 0x3

    const/16 v3, 0x30

    invoke-virtual {p0, v6, v2, v3}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 566
    invoke-virtual {p0, v6, v7, v1}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 567
    const/4 v1, 0x6

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v7, v2}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 569
    iget v1, p0, Landroid/media/audiofx/AudioDolby;->mEQType:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_6

    .line 571
    const/16 v1, 0xc

    const/16 v2, 0x10

    invoke-virtual {p0, v1, v0, v2}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 572
    const/16 v1, 0xc

    const/16 v2, 0x10

    invoke-virtual {p0, v1, v7, v2}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    goto/16 :goto_1
.end method


# virtual methods
.method public GetSoundEffectParameter(II)I
    .locals 5
    .parameter "se"
    .parameter "parm"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 607
    if-nez p1, :cond_1

    const/16 v4, 0x8

    if-ne p2, v4, :cond_1

    .line 609
    invoke-virtual {p0}, Landroid/media/audiofx/AudioDolby;->getEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 618
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 609
    goto :goto_0

    .line 611
    :cond_1
    const/4 v4, 0x2

    new-array v0, v4, [I

    .line 612
    .local v0, param:[I
    new-array v1, v3, [I

    .line 614
    .local v1, result:[I
    aput p1, v0, v2

    .line 615
    aput p2, v0, v3

    .line 616
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/AudioDolby;->getParameter([I[I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/audiofx/AudioDolby;->checkStatus(I)V

    .line 618
    aget v2, v1, v2

    goto :goto_0
.end method

.method public SetSoundEffectParameter(III)V
    .locals 6
    .parameter "se"
    .parameter "parm"
    .parameter "value"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 592
    if-nez p1, :cond_1

    const/16 v5, 0x8

    if-ne p2, v5, :cond_1

    .line 593
    if-nez p3, :cond_0

    :goto_0
    invoke-virtual {p0, v3}, Landroid/media/audiofx/AudioDolby;->setEnabled(Z)I

    .line 603
    :goto_1
    return-void

    :cond_0
    move v3, v4

    .line 593
    goto :goto_0

    .line 596
    :cond_1
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioDolby;->intToByteArray(I)[B

    move-result-object v0

    .line 598
    .local v0, p:[B
    invoke-virtual {p0, p2}, Landroid/media/audiofx/AudioDolby;->intToByteArray(I)[B

    move-result-object v1

    .line 599
    .local v1, v:[B
    invoke-virtual {p0, p3}, Landroid/media/audiofx/AudioDolby;->intToByteArray(I)[B

    move-result-object v2

    .line 600
    .local v2, v2:[B
    const/4 v5, 0x2

    new-array v5, v5, [[B

    aput-object v1, v5, v3

    aput-object v2, v5, v4

    invoke-virtual {p0, v5}, Landroid/media/audiofx/AudioDolby;->concatArrays([[B)[B

    move-result-object v1

    .line 602
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/AudioDolby;->setParameter([B[B)I

    goto :goto_1
.end method

.method public SoundEffectEnable(IZ)V
    .locals 1
    .parameter "se"
    .parameter "enable"

    .prologue
    .line 584
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/media/audiofx/AudioDolby;->_SoundEffectEnable(II)V

    .line 585
    return-void

    .line 584
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public closeDolby()V
    .locals 2

    .prologue
    .line 622
    const/16 v0, 0x65

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/AudioDolby;->SoundEffectEnable(IZ)V

    .line 623
    return-void
.end method

.method public enableMSREnhanceMode(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/16 v0, 0x9

    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 680
    if-eqz p1, :cond_0

    .line 682
    invoke-virtual {p0, v1, v0, v2}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 683
    const/4 v0, 0x4

    invoke-virtual {p0, v1, v2, v0}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 691
    :goto_0
    return-void

    .line 687
    :cond_0
    invoke-virtual {p0, v1, v0, v1}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 688
    invoke-virtual {p0, v1, v2, v1}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    goto :goto_0
.end method

.method public enablePortableMode(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x4

    .line 664
    if-eqz p1, :cond_0

    .line 666
    invoke-direct {p0, v1, v2}, Landroid/media/audiofx/AudioDolby;->_SoundEffectEnable(II)V

    .line 667
    invoke-virtual {p0, v1, v2, v0}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 668
    const/4 v0, 0x2

    invoke-virtual {p0, v1, v0, v2}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 674
    :goto_0
    return-void

    .line 672
    :cond_0
    invoke-direct {p0, v1, v0}, Landroid/media/audiofx/AudioDolby;->_SoundEffectEnable(II)V

    goto :goto_0
.end method

.method public resetDolby()V
    .locals 2

    .prologue
    .line 630
    const/16 v0, 0x66

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/AudioDolby;->SoundEffectEnable(IZ)V

    .line 631
    return-void
.end method

.method public restoreSpeakerParam([I)V
    .locals 7
    .parameter "param"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 695
    const/16 v0, 0xc

    aget v1, p1, v5

    invoke-direct {p0, v0, v1}, Landroid/media/audiofx/AudioDolby;->_SoundEffectEnable(II)V

    .line 696
    const/16 v0, 0xc

    aget v1, p1, v2

    invoke-virtual {p0, v0, v2, v1}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 697
    const/16 v0, 0xc

    aget v1, p1, v3

    invoke-virtual {p0, v0, v3, v1}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 699
    aget v0, p1, v6

    invoke-direct {p0, v4, v0}, Landroid/media/audiofx/AudioDolby;->_SoundEffectEnable(II)V

    .line 700
    aget v0, p1, v4

    invoke-virtual {p0, v4, v2, v0}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 701
    const/4 v0, 0x5

    aget v0, p1, v0

    invoke-virtual {p0, v4, v3, v0}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 713
    const/4 v0, 0x7

    const/4 v1, 0x6

    aget v1, p1, v1

    invoke-virtual {p0, v0, v3, v1}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 714
    const/4 v0, 0x7

    const/4 v1, 0x7

    aget v1, p1, v1

    invoke-virtual {p0, v0, v6, v1}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 716
    const/4 v0, 0x6

    const/16 v1, 0x8

    aget v1, p1, v1

    invoke-virtual {p0, v0, v2, v1}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 717
    const/16 v0, 0x9

    const/16 v1, 0x9

    aget v1, p1, v1

    invoke-virtual {p0, v5, v0, v1}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 718
    const/16 v0, 0xa

    aget v0, p1, v0

    invoke-virtual {p0, v5, v6, v0}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 719
    return-void
.end method

.method public saveSpeakerParam()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 723
    sget-object v0, Landroid/media/audiofx/AudioDolby;->lastSpeakerParam:[I

    const/16 v1, 0xc

    invoke-virtual {p0, v1, v3}, Landroid/media/audiofx/AudioDolby;->GetSoundEffectParameter(II)I

    move-result v1

    aput v1, v0, v3

    .line 724
    sget-object v0, Landroid/media/audiofx/AudioDolby;->lastSpeakerParam:[I

    const/16 v1, 0xc

    invoke-virtual {p0, v1, v4}, Landroid/media/audiofx/AudioDolby;->GetSoundEffectParameter(II)I

    move-result v1

    aput v1, v0, v4

    .line 725
    sget-object v0, Landroid/media/audiofx/AudioDolby;->lastSpeakerParam:[I

    const/16 v1, 0xc

    invoke-virtual {p0, v1, v5}, Landroid/media/audiofx/AudioDolby;->GetSoundEffectParameter(II)I

    move-result v1

    aput v1, v0, v5

    .line 727
    sget-object v0, Landroid/media/audiofx/AudioDolby;->lastSpeakerParam:[I

    invoke-virtual {p0, v2, v3}, Landroid/media/audiofx/AudioDolby;->GetSoundEffectParameter(II)I

    move-result v1

    aput v1, v0, v6

    .line 728
    sget-object v0, Landroid/media/audiofx/AudioDolby;->lastSpeakerParam:[I

    invoke-virtual {p0, v2, v4}, Landroid/media/audiofx/AudioDolby;->GetSoundEffectParameter(II)I

    move-result v1

    aput v1, v0, v2

    .line 729
    sget-object v0, Landroid/media/audiofx/AudioDolby;->lastSpeakerParam:[I

    const/4 v1, 0x5

    invoke-virtual {p0, v2, v5}, Landroid/media/audiofx/AudioDolby;->GetSoundEffectParameter(II)I

    move-result v2

    aput v2, v0, v1

    .line 742
    sget-object v0, Landroid/media/audiofx/AudioDolby;->lastSpeakerParam:[I

    const/4 v1, 0x6

    const/4 v2, 0x7

    invoke-virtual {p0, v2, v5}, Landroid/media/audiofx/AudioDolby;->GetSoundEffectParameter(II)I

    move-result v2

    aput v2, v0, v1

    .line 743
    sget-object v0, Landroid/media/audiofx/AudioDolby;->lastSpeakerParam:[I

    const/4 v1, 0x7

    const/4 v2, 0x7

    invoke-virtual {p0, v2, v6}, Landroid/media/audiofx/AudioDolby;->GetSoundEffectParameter(II)I

    move-result v2

    aput v2, v0, v1

    .line 745
    sget-object v0, Landroid/media/audiofx/AudioDolby;->lastSpeakerParam:[I

    const/16 v1, 0x8

    const/4 v2, 0x6

    invoke-virtual {p0, v2, v4}, Landroid/media/audiofx/AudioDolby;->GetSoundEffectParameter(II)I

    move-result v2

    aput v2, v0, v1

    .line 746
    sget-object v0, Landroid/media/audiofx/AudioDolby;->lastSpeakerParam:[I

    const/16 v1, 0x9

    const/16 v2, 0x9

    invoke-virtual {p0, v3, v2}, Landroid/media/audiofx/AudioDolby;->GetSoundEffectParameter(II)I

    move-result v2

    aput v2, v0, v1

    .line 747
    sget-object v0, Landroid/media/audiofx/AudioDolby;->lastSpeakerParam:[I

    const/16 v1, 0xa

    invoke-virtual {p0, v3, v6}, Landroid/media/audiofx/AudioDolby;->GetSoundEffectParameter(II)I

    move-result v2

    aput v2, v0, v1

    .line 750
    return-void
.end method

.method public setBrightnessLevel(I)Z
    .locals 4
    .parameter "level"

    .prologue
    const/4 v3, 0x2

    .line 653
    const-string v0, "AudioDolby"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBrightnessLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    if-ltz p1, :cond_0

    if-le p1, v3, :cond_1

    .line 655
    :cond_0
    const/4 v0, 0x0

    .line 659
    :goto_0
    return v0

    .line 658
    :cond_1
    const/16 v0, 0x9

    sget-object v1, Landroid/media/audiofx/AudioDolby;->BRIGHTNESS_LEVEL_SETTING:[I

    aget v1, v1, p1

    invoke-virtual {p0, v0, v3, v1}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    .line 659
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setEQType(I)Z
    .locals 3
    .parameter "type"

    .prologue
    .line 381
    const-string v0, "AudioDolby"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEQType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    if-ltz p1, :cond_0

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_1

    .line 383
    :cond_0
    const/4 v0, 0x0

    .line 386
    :goto_0
    return v0

    .line 384
    :cond_1
    iput p1, p0, Landroid/media/audiofx/AudioDolby;->mEQType:I

    .line 385
    invoke-direct {p0}, Landroid/media/audiofx/AudioDolby;->_updateSetting()Z

    .line 386
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setHFELevel(I)Z
    .locals 7
    .parameter "level"

    .prologue
    const/4 v6, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v5, 0xa

    .line 390
    const-string v2, "AudioDolby"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setHFELevel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    if-ltz p1, :cond_0

    if-le p1, v6, :cond_1

    :cond_0
    move v0, v1

    .line 403
    :goto_0
    return v0

    .line 394
    :cond_1
    if-ne p1, v6, :cond_2

    .line 395
    invoke-direct {p0, v5, v1}, Landroid/media/audiofx/AudioDolby;->_SoundEffectEnable(II)V

    .line 402
    :goto_1
    iput p1, p0, Landroid/media/audiofx/AudioDolby;->mHFELevel:I

    goto :goto_0

    .line 397
    :cond_2
    invoke-virtual {p0, v5, v1}, Landroid/media/audiofx/AudioDolby;->GetSoundEffectParameter(II)I

    move-result v1

    if-nez v1, :cond_3

    .line 398
    invoke-direct {p0, v5, v0}, Landroid/media/audiofx/AudioDolby;->_SoundEffectEnable(II)V

    .line 400
    :cond_3
    sget-object v1, Landroid/media/audiofx/AudioDolby;->HFE_LEVEL_SETTING:[I

    aget v1, v1, p1

    invoke-virtual {p0, v5, v0, v1}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    goto :goto_1
.end method

.method public setMode(I)Z
    .locals 4
    .parameter "mode"

    .prologue
    const/4 v0, 0x1

    .line 372
    const-string v1, "AudioDolby"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    .line 374
    :cond_0
    const/4 v0, 0x0

    .line 377
    :goto_0
    return v0

    .line 375
    :cond_1
    iput p1, p0, Landroid/media/audiofx/AudioDolby;->mMode:I

    .line 376
    invoke-direct {p0}, Landroid/media/audiofx/AudioDolby;->_updateSetting()Z

    goto :goto_0
.end method

.method public setNBLevel(I)Z
    .locals 8
    .parameter "level"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x6

    .line 407
    const-string v2, "AudioDolby"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setNBLevel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    if-ltz p1, :cond_0

    if-le p1, v7, :cond_1

    :cond_0
    move v0, v1

    .line 423
    :goto_0
    return v0

    .line 411
    :cond_1
    if-ne p1, v7, :cond_3

    .line 412
    invoke-direct {p0, v5, v1}, Landroid/media/audiofx/AudioDolby;->_SoundEffectEnable(II)V

    .line 422
    :cond_2
    :goto_1
    iput p1, p0, Landroid/media/audiofx/AudioDolby;->mNBLevel:I

    goto :goto_0

    .line 414
    :cond_3
    invoke-virtual {p0, v5, v1}, Landroid/media/audiofx/AudioDolby;->GetSoundEffectParameter(II)I

    move-result v1

    if-nez v1, :cond_4

    .line 415
    invoke-direct {p0, v5, v0}, Landroid/media/audiofx/AudioDolby;->_SoundEffectEnable(II)V

    .line 416
    :cond_4
    iget v1, p0, Landroid/media/audiofx/AudioDolby;->mMode:I

    if-nez v1, :cond_5

    .line 417
    sget-object v1, Landroid/media/audiofx/AudioDolby;->NB_LEVEL_SETTING_HEADPHONE:[I

    aget v1, v1, p1

    invoke-virtual {p0, v5, v6, v1}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    goto :goto_1

    .line 418
    :cond_5
    iget v1, p0, Landroid/media/audiofx/AudioDolby;->mMode:I

    if-ne v1, v0, :cond_2

    .line 419
    sget-object v1, Landroid/media/audiofx/AudioDolby;->NB_LEVEL_SETTING_SPEAKER:[I

    aget v1, v1, p1

    invoke-virtual {p0, v5, v6, v1}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    goto :goto_1
.end method

.method public setRoomSizeLevel(I)Z
    .locals 4
    .parameter "level"

    .prologue
    const/4 v0, 0x1

    .line 640
    const-string v1, "AudioDolby"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRoomSizeLevel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    if-ltz p1, :cond_0

    const/4 v1, 0x2

    if-le p1, v1, :cond_1

    .line 642
    :cond_0
    const/4 v0, 0x0

    .line 646
    :goto_0
    return v0

    .line 645
    :cond_1
    const/16 v1, 0x9

    sget-object v2, Landroid/media/audiofx/AudioDolby;->ROOM_LEVEL_SETTING:[I

    aget v2, v2, p1

    invoke-virtual {p0, v1, v0, v2}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    goto :goto_0
.end method

.method public setSPKEQ(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 626
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/AudioDolby;->SoundEffectEnable(IZ)V

    .line 627
    return-void
.end method

.method public setSSHLevel(I)Z
    .locals 6
    .parameter "level"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x3

    .line 428
    const-string v2, "AudioDolby"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSSHLevel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    if-ltz p1, :cond_0

    if-le p1, v5, :cond_1

    :cond_0
    move v0, v1

    .line 441
    :goto_0
    return v0

    .line 433
    :cond_1
    if-ne p1, v5, :cond_2

    .line 434
    invoke-direct {p0, v5, v1}, Landroid/media/audiofx/AudioDolby;->_SoundEffectEnable(II)V

    .line 440
    :goto_1
    iput p1, p0, Landroid/media/audiofx/AudioDolby;->mSSHLevel:I

    goto :goto_0

    .line 436
    :cond_2
    invoke-virtual {p0, v5, v1}, Landroid/media/audiofx/AudioDolby;->GetSoundEffectParameter(II)I

    move-result v1

    if-nez v1, :cond_3

    .line 437
    invoke-direct {p0, v5, v0}, Landroid/media/audiofx/AudioDolby;->_SoundEffectEnable(II)V

    .line 438
    :cond_3
    sget-object v1, Landroid/media/audiofx/AudioDolby;->SSH_LEVEL_SETTING:[I

    aget v1, v1, p1

    invoke-virtual {p0, v5, v0, v1}, Landroid/media/audiofx/AudioDolby;->SetSoundEffectParameter(III)V

    goto :goto_1
.end method

.method public setUserType(I)Z
    .locals 4
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    .line 364
    const-string v1, "AudioDolby"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUserType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    .line 366
    :cond_0
    const/4 v0, 0x0

    .line 368
    :goto_0
    return v0

    .line 367
    :cond_1
    iput p1, p0, Landroid/media/audiofx/AudioDolby;->mType:I

    goto :goto_0
.end method

.method public speakerDolbyEffectEnable(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    const/16 v1, 0x64

    .line 754
    if-eqz p1, :cond_0

    .line 756
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioDolby;->setSPKEQ(Z)V

    .line 757
    sget-object v0, Landroid/media/audiofx/AudioDolby;->lastSpeakerParam:[I

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioDolby;->restoreSpeakerParam([I)V

    .line 758
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Landroid/media/audiofx/AudioDolby;->_SoundEffectEnable(II)V

    .line 766
    :goto_0
    return-void

    .line 762
    :cond_0
    invoke-virtual {p0}, Landroid/media/audiofx/AudioDolby;->saveSpeakerParam()V

    .line 763
    sget-object v0, Landroid/media/audiofx/AudioDolby;->defaultSpeakerParam:[I

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioDolby;->restoreSpeakerParam([I)V

    .line 764
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Landroid/media/audiofx/AudioDolby;->_SoundEffectEnable(II)V

    goto :goto_0
.end method

.method public updateSetting()Z
    .locals 1

    .prologue
    .line 446
    invoke-direct {p0}, Landroid/media/audiofx/AudioDolby;->_updateSetting()Z

    move-result v0

    return v0
.end method
