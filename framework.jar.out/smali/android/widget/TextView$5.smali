.class synthetic Landroid/widget/TextView$5;
.super Ljava/lang/Object;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$text$Layout$Alignment:[I

.field static final synthetic $SwitchMap$android$widget$TextView$POSITION:[I

.field static final synthetic $SwitchMap$android$widget$TextView$TextAlign:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13221
    invoke-static {}, Landroid/widget/TextView$POSITION;->values()[Landroid/widget/TextView$POSITION;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroid/widget/TextView$5;->$SwitchMap$android$widget$TextView$POSITION:[I

    :try_start_0
    sget-object v0, Landroid/widget/TextView$5;->$SwitchMap$android$widget$TextView$POSITION:[I

    sget-object v1, Landroid/widget/TextView$POSITION;->TOP:Landroid/widget/TextView$POSITION;

    invoke-virtual {v1}, Landroid/widget/TextView$POSITION;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_e

    :goto_0
    :try_start_1
    sget-object v0, Landroid/widget/TextView$5;->$SwitchMap$android$widget$TextView$POSITION:[I

    sget-object v1, Landroid/widget/TextView$POSITION;->BOTTOM:Landroid/widget/TextView$POSITION;

    invoke-virtual {v1}, Landroid/widget/TextView$POSITION;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_d

    :goto_1
    :try_start_2
    sget-object v0, Landroid/widget/TextView$5;->$SwitchMap$android$widget$TextView$POSITION:[I

    sget-object v1, Landroid/widget/TextView$POSITION;->MIDDLE:Landroid/widget/TextView$POSITION;

    invoke-virtual {v1}, Landroid/widget/TextView$POSITION;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_c

    .line 7130
    :goto_2
    invoke-static {}, Landroid/text/Layout$Alignment;->values()[Landroid/text/Layout$Alignment;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroid/widget/TextView$5;->$SwitchMap$android$text$Layout$Alignment:[I

    :try_start_3
    sget-object v0, Landroid/widget/TextView$5;->$SwitchMap$android$text$Layout$Alignment:[I

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_b

    :goto_3
    :try_start_4
    sget-object v0, Landroid/widget/TextView$5;->$SwitchMap$android$text$Layout$Alignment:[I

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_a

    :goto_4
    :try_start_5
    sget-object v0, Landroid/widget/TextView$5;->$SwitchMap$android$text$Layout$Alignment:[I

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_9

    :goto_5
    :try_start_6
    sget-object v0, Landroid/widget/TextView$5;->$SwitchMap$android$text$Layout$Alignment:[I

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_8

    :goto_6
    :try_start_7
    sget-object v0, Landroid/widget/TextView$5;->$SwitchMap$android$text$Layout$Alignment:[I

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 6377
    :goto_7
    invoke-static {}, Landroid/widget/TextView$TextAlign;->values()[Landroid/widget/TextView$TextAlign;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroid/widget/TextView$5;->$SwitchMap$android$widget$TextView$TextAlign:[I

    :try_start_8
    sget-object v0, Landroid/widget/TextView$5;->$SwitchMap$android$widget$TextView$TextAlign:[I

    sget-object v1, Landroid/widget/TextView$TextAlign;->INHERIT:Landroid/widget/TextView$TextAlign;

    invoke-virtual {v1}, Landroid/widget/TextView$TextAlign;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_6

    :goto_8
    :try_start_9
    sget-object v0, Landroid/widget/TextView$5;->$SwitchMap$android$widget$TextView$TextAlign:[I

    sget-object v1, Landroid/widget/TextView$TextAlign;->GRAVITY:Landroid/widget/TextView$TextAlign;

    invoke-virtual {v1}, Landroid/widget/TextView$TextAlign;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_5

    :goto_9
    :try_start_a
    sget-object v0, Landroid/widget/TextView$5;->$SwitchMap$android$widget$TextView$TextAlign:[I

    sget-object v1, Landroid/widget/TextView$TextAlign;->TEXT_START:Landroid/widget/TextView$TextAlign;

    invoke-virtual {v1}, Landroid/widget/TextView$TextAlign;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_4

    :goto_a
    :try_start_b
    sget-object v0, Landroid/widget/TextView$5;->$SwitchMap$android$widget$TextView$TextAlign:[I

    sget-object v1, Landroid/widget/TextView$TextAlign;->TEXT_END:Landroid/widget/TextView$TextAlign;

    invoke-virtual {v1}, Landroid/widget/TextView$TextAlign;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_3

    :goto_b
    :try_start_c
    sget-object v0, Landroid/widget/TextView$5;->$SwitchMap$android$widget$TextView$TextAlign:[I

    sget-object v1, Landroid/widget/TextView$TextAlign;->CENTER:Landroid/widget/TextView$TextAlign;

    invoke-virtual {v1}, Landroid/widget/TextView$TextAlign;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_2

    :goto_c
    :try_start_d
    sget-object v0, Landroid/widget/TextView$5;->$SwitchMap$android$widget$TextView$TextAlign:[I

    sget-object v1, Landroid/widget/TextView$TextAlign;->VIEW_START:Landroid/widget/TextView$TextAlign;

    invoke-virtual {v1}, Landroid/widget/TextView$TextAlign;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_1

    :goto_d
    :try_start_e
    sget-object v0, Landroid/widget/TextView$5;->$SwitchMap$android$widget$TextView$TextAlign:[I

    sget-object v1, Landroid/widget/TextView$TextAlign;->VIEW_END:Landroid/widget/TextView$TextAlign;

    invoke-virtual {v1}, Landroid/widget/TextView$TextAlign;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_0

    :goto_e
    return-void

    :catch_0
    move-exception v0

    goto :goto_e

    :catch_1
    move-exception v0

    goto :goto_d

    :catch_2
    move-exception v0

    goto :goto_c

    :catch_3
    move-exception v0

    goto :goto_b

    :catch_4
    move-exception v0

    goto :goto_a

    :catch_5
    move-exception v0

    goto :goto_9

    :catch_6
    move-exception v0

    goto :goto_8

    .line 7130
    :catch_7
    move-exception v0

    goto :goto_7

    :catch_8
    move-exception v0

    goto :goto_6

    :catch_9
    move-exception v0

    goto :goto_5

    :catch_a
    move-exception v0

    goto/16 :goto_4

    :catch_b
    move-exception v0

    goto/16 :goto_3

    .line 13221
    :catch_c
    move-exception v0

    goto/16 :goto_2

    :catch_d
    move-exception v0

    goto/16 :goto_1

    :catch_e
    move-exception v0

    goto/16 :goto_0
.end method
