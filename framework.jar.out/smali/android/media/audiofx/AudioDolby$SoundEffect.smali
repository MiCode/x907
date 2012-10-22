.class public final Landroid/media/audiofx/AudioDolby$SoundEffect;
.super Ljava/lang/Object;
.source "AudioDolby.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/AudioDolby;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SoundEffect"
.end annotation


# static fields
.field public static final BUNDLE:I = 0x0

.field public static final CLOSE_DOLBY:I = 0x65

.field public static final FADE:I = 0xb

.field public static final GEQ:I = 0x7

.field public static final HFE:I = 0xa

.field public static final MSR:I = 0x9

.field public static final NB:I = 0x6

.field public static final RESET_DOLBY:I = 0x66

.field public static final SEQ:I = 0xc

.field public static final SET_DOLBY:I = 0x64

.field public static final SLC:I = 0x4

.field public static final SSE:I = 0x2

.field public static final SSH:I = 0x3


# instance fields
.field final synthetic this$0:Landroid/media/audiofx/AudioDolby;


# direct methods
.method private constructor <init>(Landroid/media/audiofx/AudioDolby;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Landroid/media/audiofx/AudioDolby$SoundEffect;->this$0:Landroid/media/audiofx/AudioDolby;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
