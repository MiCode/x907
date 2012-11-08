.class public Lcom/oppo/camera/lomo/FilterHandler;
.super Ljava/lang/Object;
.source "FilterHandler.java"


# instance fields
.field private mDofLandBitmap:Landroid/graphics/Bitmap;

.field private mDofPortBitmap:Landroid/graphics/Bitmap;

.field mFilterGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/camera/lomo/FilterGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mWarpBuffers:[Lcom/scalado/stream/BufferStream;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/lomo/FilterHandler;->mFilterGroups:Ljava/util/ArrayList;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/lomo/FilterHandler;->cacheWarpBuffers(Landroid/content/res/AssetManager;)V

    .line 57
    invoke-virtual {p0, p1}, Lcom/oppo/camera/lomo/FilterHandler;->createFilters(Landroid/content/Context;)V

    .line 58
    return-void
.end method


# virtual methods
.method cacheWarpBuffers(Landroid/content/res/AssetManager;)V
    .locals 8
    .parameter "assetManager"

    .prologue
    .line 101
    const/4 v4, 0x7

    new-array v4, v4, [Lcom/scalado/stream/BufferStream;

    iput-object v4, p0, Lcom/oppo/camera/lomo/FilterHandler;->mWarpBuffers:[Lcom/scalado/stream/BufferStream;

    .line 103
    :try_start_0
    const-string v4, "alienscum.wrp"

    invoke-virtual {p1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 104
    .local v2, is:Ljava/io/InputStream;
    const/high16 v4, 0x2

    new-array v3, v4, [B

    .line 105
    .local v3, warpData:[B
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    .line 106
    new-instance v0, Lcom/scalado/base/Buffer;

    invoke-direct {v0, v3}, Lcom/scalado/base/Buffer;-><init>([B)V

    .line 107
    .local v0, buffer:Lcom/scalado/base/Buffer;
    iget-object v4, p0, Lcom/oppo/camera/lomo/FilterHandler;->mWarpBuffers:[Lcom/scalado/stream/BufferStream;

    const/4 v5, 0x0

    new-instance v6, Lcom/scalado/stream/BufferStream;

    invoke-virtual {v0}, Lcom/scalado/base/Buffer;->getSize()I

    move-result v7

    invoke-direct {v6, v0, v7}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    aput-object v6, v4, v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v0           #buffer:Lcom/scalado/base/Buffer;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #warpData:[B
    :goto_0
    :try_start_1
    const-string v4, "booziebowl.wrp"

    invoke-virtual {p1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 113
    .restart local v2       #is:Ljava/io/InputStream;
    const/high16 v4, 0x2

    new-array v3, v4, [B

    .line 114
    .restart local v3       #warpData:[B
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    .line 115
    new-instance v0, Lcom/scalado/base/Buffer;

    invoke-direct {v0, v3}, Lcom/scalado/base/Buffer;-><init>([B)V

    .line 116
    .restart local v0       #buffer:Lcom/scalado/base/Buffer;
    iget-object v4, p0, Lcom/oppo/camera/lomo/FilterHandler;->mWarpBuffers:[Lcom/scalado/stream/BufferStream;

    const/4 v5, 0x1

    new-instance v6, Lcom/scalado/stream/BufferStream;

    invoke-virtual {v0}, Lcom/scalado/base/Buffer;->getSize()I

    move-result v7

    invoke-direct {v6, v0, v7}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    aput-object v6, v4, v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 121
    .end local v0           #buffer:Lcom/scalado/base/Buffer;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #warpData:[B
    :goto_1
    :try_start_2
    const-string v4, "conehead.wrp"

    invoke-virtual {p1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 122
    .restart local v2       #is:Ljava/io/InputStream;
    const/high16 v4, 0x2

    new-array v3, v4, [B

    .line 123
    .restart local v3       #warpData:[B
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    .line 125
    new-instance v0, Lcom/scalado/base/Buffer;

    invoke-direct {v0, v3}, Lcom/scalado/base/Buffer;-><init>([B)V

    .line 126
    .restart local v0       #buffer:Lcom/scalado/base/Buffer;
    iget-object v4, p0, Lcom/oppo/camera/lomo/FilterHandler;->mWarpBuffers:[Lcom/scalado/stream/BufferStream;

    const/4 v5, 0x2

    new-instance v6, Lcom/scalado/stream/BufferStream;

    invoke-virtual {v0}, Lcom/scalado/base/Buffer;->getSize()I

    move-result v7

    invoke-direct {v6, v0, v7}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    aput-object v6, v4, v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 131
    .end local v0           #buffer:Lcom/scalado/base/Buffer;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #warpData:[B
    :goto_2
    :try_start_3
    const-string v4, "funkyfresh.wrp"

    invoke-virtual {p1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 132
    .restart local v2       #is:Ljava/io/InputStream;
    const/high16 v4, 0x2

    new-array v3, v4, [B

    .line 133
    .restart local v3       #warpData:[B
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    .line 134
    new-instance v0, Lcom/scalado/base/Buffer;

    invoke-direct {v0, v3}, Lcom/scalado/base/Buffer;-><init>([B)V

    .line 135
    .restart local v0       #buffer:Lcom/scalado/base/Buffer;
    iget-object v4, p0, Lcom/oppo/camera/lomo/FilterHandler;->mWarpBuffers:[Lcom/scalado/stream/BufferStream;

    const/4 v5, 0x3

    new-instance v6, Lcom/scalado/stream/BufferStream;

    invoke-virtual {v0}, Lcom/scalado/base/Buffer;->getSize()I

    move-result v7

    invoke-direct {v6, v0, v7}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    aput-object v6, v4, v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 140
    .end local v0           #buffer:Lcom/scalado/base/Buffer;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #warpData:[B
    :goto_3
    :try_start_4
    const-string v4, "fisheye.wrp"

    invoke-virtual {p1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 141
    .restart local v2       #is:Ljava/io/InputStream;
    const/high16 v4, 0x2

    new-array v3, v4, [B

    .line 142
    .restart local v3       #warpData:[B
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    .line 143
    new-instance v0, Lcom/scalado/base/Buffer;

    invoke-direct {v0, v3}, Lcom/scalado/base/Buffer;-><init>([B)V

    .line 144
    .restart local v0       #buffer:Lcom/scalado/base/Buffer;
    iget-object v4, p0, Lcom/oppo/camera/lomo/FilterHandler;->mWarpBuffers:[Lcom/scalado/stream/BufferStream;

    const/4 v5, 0x6

    new-instance v6, Lcom/scalado/stream/BufferStream;

    invoke-virtual {v0}, Lcom/scalado/base/Buffer;->getSize()I

    move-result v7

    invoke-direct {v6, v0, v7}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    aput-object v6, v4, v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 148
    .end local v0           #buffer:Lcom/scalado/base/Buffer;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #warpData:[B
    :goto_4
    return-void

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 117
    .end local v1           #ioe:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 118
    .restart local v1       #ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 127
    .end local v1           #ioe:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 128
    .restart local v1       #ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 136
    .end local v1           #ioe:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 137
    .restart local v1       #ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 145
    .end local v1           #ioe:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 146
    .restart local v1       #ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method public createFilters(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 61
    new-instance v1, Lcom/oppo/camera/lomo/FilterGroup;

    const-string v4, "Fun"

    invoke-direct {v1, v4}, Lcom/oppo/camera/lomo/FilterGroup;-><init>(Ljava/lang/String;)V

    .line 62
    .local v1, fun:Lcom/oppo/camera/lomo/FilterGroup;
    new-instance v2, Lcom/oppo/camera/lomo/FilterGroup;

    const-string v4, "Sun"

    invoke-direct {v2, v4}, Lcom/oppo/camera/lomo/FilterGroup;-><init>(Ljava/lang/String;)V

    .line 63
    .local v2, sun:Lcom/oppo/camera/lomo/FilterGroup;
    new-instance v3, Lcom/oppo/camera/lomo/FilterGroup;

    const-string v4, "Wrap"

    invoke-direct {v3, v4}, Lcom/oppo/camera/lomo/FilterGroup;-><init>(Ljava/lang/String;)V

    .line 65
    .local v3, wrap:Lcom/oppo/camera/lomo/FilterGroup;
    iget-object v4, p0, Lcom/oppo/camera/lomo/FilterHandler;->mFilterGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v4, p0, Lcom/oppo/camera/lomo/FilterHandler;->mFilterGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v4, p0, Lcom/oppo/camera/lomo/FilterHandler;->mFilterGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v4, Lcom/oppo/camera/lomo/filters/WrapFilter;

    iget-object v5, p0, Lcom/oppo/camera/lomo/FilterHandler;->mWarpBuffers:[Lcom/scalado/stream/BufferStream;

    aget-object v5, v5, v9

    invoke-direct {v4, v8, v5}, Lcom/oppo/camera/lomo/filters/WrapFilter;-><init>(ILcom/scalado/stream/BufferStream;)V

    invoke-virtual {v3, v4}, Lcom/oppo/camera/lomo/FilterGroup;->add(Lcom/oppo/camera/lomo/filters/Filter;)V

    .line 70
    new-instance v4, Lcom/oppo/camera/lomo/filters/WrapFilter;

    iget-object v5, p0, Lcom/oppo/camera/lomo/FilterHandler;->mWarpBuffers:[Lcom/scalado/stream/BufferStream;

    aget-object v5, v5, v8

    invoke-direct {v4, v6, v5}, Lcom/oppo/camera/lomo/filters/WrapFilter;-><init>(ILcom/scalado/stream/BufferStream;)V

    invoke-virtual {v3, v4}, Lcom/oppo/camera/lomo/FilterGroup;->add(Lcom/oppo/camera/lomo/filters/Filter;)V

    .line 71
    new-instance v4, Lcom/oppo/camera/lomo/filters/WrapFilter;

    iget-object v5, p0, Lcom/oppo/camera/lomo/FilterHandler;->mWarpBuffers:[Lcom/scalado/stream/BufferStream;

    aget-object v5, v5, v6

    invoke-direct {v4, v7, v5}, Lcom/oppo/camera/lomo/filters/WrapFilter;-><init>(ILcom/scalado/stream/BufferStream;)V

    invoke-virtual {v3, v4}, Lcom/oppo/camera/lomo/FilterGroup;->add(Lcom/oppo/camera/lomo/filters/Filter;)V

    .line 72
    new-instance v4, Lcom/oppo/camera/lomo/filters/WrapFilter;

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/oppo/camera/lomo/FilterHandler;->mWarpBuffers:[Lcom/scalado/stream/BufferStream;

    aget-object v6, v6, v7

    invoke-direct {v4, v5, v6}, Lcom/oppo/camera/lomo/filters/WrapFilter;-><init>(ILcom/scalado/stream/BufferStream;)V

    invoke-virtual {v3, v4}, Lcom/oppo/camera/lomo/FilterGroup;->add(Lcom/oppo/camera/lomo/filters/Filter;)V

    .line 74
    new-instance v4, Lcom/oppo/camera/lomo/filters/WrapFilter;

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/oppo/camera/lomo/FilterHandler;->mWarpBuffers:[Lcom/scalado/stream/BufferStream;

    const/4 v7, 0x6

    aget-object v6, v6, v7

    invoke-direct {v4, v5, v6}, Lcom/oppo/camera/lomo/filters/WrapFilter;-><init>(ILcom/scalado/stream/BufferStream;)V

    invoke-virtual {v1, v4}, Lcom/oppo/camera/lomo/FilterGroup;->add(Lcom/oppo/camera/lomo/filters/Filter;)V

    .line 75
    new-instance v4, Lcom/oppo/camera/lomo/filters/MirrorFilter;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Lcom/oppo/camera/lomo/filters/MirrorFilter;-><init>(I)V

    invoke-virtual {v1, v4}, Lcom/oppo/camera/lomo/FilterGroup;->add(Lcom/oppo/camera/lomo/filters/Filter;)V

    .line 76
    new-instance v4, Lcom/oppo/camera/lomo/filters/SketchFilter;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v8}, Lcom/oppo/camera/lomo/filters/SketchFilter;-><init>(IZ)V

    invoke-virtual {v1, v4}, Lcom/oppo/camera/lomo/FilterGroup;->add(Lcom/oppo/camera/lomo/filters/Filter;)V

    .line 77
    new-instance v4, Lcom/oppo/camera/lomo/filters/SketchFilter;

    const/16 v5, 0x9

    invoke-direct {v4, v5, v9}, Lcom/oppo/camera/lomo/filters/SketchFilter;-><init>(IZ)V

    invoke-virtual {v1, v4}, Lcom/oppo/camera/lomo/FilterGroup;->add(Lcom/oppo/camera/lomo/filters/Filter;)V

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020048

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/camera/lomo/FilterHandler;->mDofLandBitmap:Landroid/graphics/Bitmap;

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020049

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/camera/lomo/FilterHandler;->mDofPortBitmap:Landroid/graphics/Bitmap;

    .line 81
    new-instance v0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;

    const/16 v4, 0xa

    invoke-direct {v0, v4}, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;-><init>(I)V

    .line 82
    .local v0, dofFilter:Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;
    iget-object v4, p0, Lcom/oppo/camera/lomo/FilterHandler;->mDofLandBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/oppo/camera/lomo/FilterHandler;->mDofPortBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4, v5}, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->setUsedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 83
    invoke-virtual {v2, v0}, Lcom/oppo/camera/lomo/FilterGroup;->add(Lcom/oppo/camera/lomo/filters/Filter;)V

    .line 84
    new-instance v4, Lcom/oppo/camera/lomo/filters/MilkyFilter;

    const/16 v5, 0xb

    invoke-direct {v4, v5}, Lcom/oppo/camera/lomo/filters/MilkyFilter;-><init>(I)V

    invoke-virtual {v2, v4}, Lcom/oppo/camera/lomo/FilterGroup;->add(Lcom/oppo/camera/lomo/filters/Filter;)V

    .line 85
    new-instance v4, Lcom/oppo/camera/lomo/filters/TunnelFilter;

    const/16 v5, 0xc

    invoke-direct {v4, v5}, Lcom/oppo/camera/lomo/filters/TunnelFilter;-><init>(I)V

    invoke-virtual {v2, v4}, Lcom/oppo/camera/lomo/FilterGroup;->add(Lcom/oppo/camera/lomo/filters/Filter;)V

    .line 86
    new-instance v4, Lcom/oppo/camera/lomo/filters/YellowFilter;

    const/16 v5, 0xd

    const v6, 0x3eb33333

    const v7, 0x3e99999a

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/oppo/camera/lomo/filters/YellowFilter;-><init>(IFFF)V

    invoke-virtual {v2, v4}, Lcom/oppo/camera/lomo/FilterGroup;->add(Lcom/oppo/camera/lomo/filters/Filter;)V

    .line 88
    new-instance v4, Lcom/oppo/camera/lomo/filters/NeutralFilter;

    invoke-direct {v4, v9}, Lcom/oppo/camera/lomo/filters/NeutralFilter;-><init>(I)V

    invoke-virtual {v2, v4}, Lcom/oppo/camera/lomo/FilterGroup;->add(Lcom/oppo/camera/lomo/filters/Filter;)V

    .line 90
    return-void
.end method

.method public getFilterById(I)Lcom/oppo/camera/lomo/filters/Filter;
    .locals 5
    .parameter "id"

    .prologue
    .line 155
    iget-object v4, p0, Lcom/oppo/camera/lomo/FilterHandler;->mFilterGroups:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/lomo/FilterGroup;

    .line 156
    .local v1, group:Lcom/oppo/camera/lomo/FilterGroup;
    invoke-virtual {v1}, Lcom/oppo/camera/lomo/FilterGroup;->getFilters()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/lomo/filters/Filter;

    .line 157
    .local v0, filter:Lcom/oppo/camera/lomo/filters/Filter;
    invoke-virtual {v0}, Lcom/oppo/camera/lomo/filters/Filter;->getId()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 163
    .end local v0           #filter:Lcom/oppo/camera/lomo/filters/Filter;
    .end local v1           #group:Lcom/oppo/camera/lomo/FilterGroup;
    .end local v3           #i$:Ljava/util/Iterator;
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
