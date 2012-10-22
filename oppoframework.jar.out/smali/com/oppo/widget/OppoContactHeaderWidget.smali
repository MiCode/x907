.class public Lcom/oppo/widget/OppoContactHeaderWidget;
.super Landroid/widget/FrameLayout;
.source "OppoContactHeaderWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoContactHeaderWidget$QueryHandler;,
        Lcom/oppo/widget/OppoContactHeaderWidget$ContactQuery;,
        Lcom/oppo/widget/OppoContactHeaderWidget$ContactHeaderListener;
    }
.end annotation


# static fields
.field protected static final CONTACT_LOOKUP_ID_COLUMN_INDEX:I = 0x0

.field protected static final CONTACT_LOOKUP_PROJECTION:[Ljava/lang/String; = null

.field protected static final EMAIL_LOOKUP_CONTACT_ID_COLUMN_INDEX:I = 0x0

.field protected static final EMAIL_LOOKUP_CONTACT_LOOKUP_KEY_COLUMN_INDEX:I = 0x1

.field protected static final EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String; = null

.field protected static final PHONE_LOOKUP_CONTACT_ID_COLUMN_INDEX:I = 0x0

.field protected static final PHONE_LOOKUP_CONTACT_LOOKUP_KEY_COLUMN_INDEX:I = 0x1

.field protected static final PHONE_LOOKUP_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "OppoContactHeaderWidget"

.field private static final TOKEN_CONTACT_INFO:I = 0x0

.field private static final TOKEN_EMAIL_LOOKUP:I = 0x2

.field private static final TOKEN_PHONE_LOOKUP:I = 0x1

.field protected static final WIDGET_CARD:I = 0x0

.field protected static final WIDGET_SHORT_INTEREST:I = 0x1


# instance fields
.field private mAggregateBadge:Landroid/view/View;

.field private mContactButton:Landroid/widget/ImageView;

.field protected mContactUri:Landroid/net/Uri;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field private mDispTelephoneNumberOrGroup:Landroid/widget/TextView;

.field private mDisplayNameView:Landroid/widget/TextView;

.field private mDisplayPhNumberOrGroups:Ljava/lang/String;

.field protected mExcludeMimes:[Ljava/lang/String;

.field private mGroupsType:Ljava/lang/String;

.field private mListener:Lcom/oppo/widget/OppoContactHeaderWidget$ContactHeaderListener;

.field private mNameIsExisted:Z

.field private mNewBuildButton:Landroid/widget/ImageView;

.field private mNoPhotoResource:I

.field private mPhoneButton:Landroid/widget/ImageView;

.field private mPhoneNumber:Ljava/lang/String;

.field private mPhoneticNameView:Landroid/widget/TextView;

.field private mPhotoView:Lcom/oppo/widget/OppoQuickContactBadge;

.field private mPresenceView:Landroid/widget/ImageView;

.field private mQueryHandler:Lcom/oppo/widget/OppoContactHeaderWidget$QueryHandler;

.field private mStarredView:Landroid/widget/CheckBox;

.field private mStatusAttributionView:Landroid/widget/TextView;

.field private mStatusView:Landroid/widget/TextView;

.field private mWidgetType:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 193
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "lookup"

    aput-object v1, v0, v3

    sput-object v0, Lcom/oppo/widget/OppoContactHeaderWidget;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 203
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v2

    const-string v1, "lookup"

    aput-object v1, v0, v3

    sput-object v0, Lcom/oppo/widget/OppoContactHeaderWidget;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 212
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/oppo/widget/OppoContactHeaderWidget;->CONTACT_LOOKUP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoContactHeaderWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 228
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 232
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoContactHeaderWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 233
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x0

    .line 237
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    iput-object v5, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhoneNumber:Ljava/lang/String;

    .line 60
    iput-object v5, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mDisplayPhNumberOrGroups:Ljava/lang/String;

    .line 61
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mNameIsExisted:Z

    .line 68
    iput-object v5, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mExcludeMimes:[Ljava/lang/String;

    .line 239
    iget-object v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mContentResolver:Landroid/content/ContentResolver;

    .line 241
    iget-object v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 243
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v4, 0x1090039

    invoke-virtual {v0, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 245
    const v4, 0x10202d4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    .line 246
    const v4, 0x10202cc

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mAggregateBadge:Landroid/view/View;

    .line 247
    iget-object v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mAggregateBadge:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 249
    const v4, 0x10202d6

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhoneticNameView:Landroid/widget/TextView;

    .line 251
    const v4, 0x10202d0

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mStarredView:Landroid/widget/CheckBox;

    .line 253
    const v4, 0x10202cb

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/oppo/widget/OppoQuickContactBadge;

    iput-object v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhotoView:Lcom/oppo/widget/OppoQuickContactBadge;

    .line 255
    const v4, 0x10202cf

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPresenceView:Landroid/widget/ImageView;

    .line 257
    const v4, 0x10202cd

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mStatusView:Landroid/widget/TextView;

    .line 258
    const v4, 0x10202ce

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mStatusAttributionView:Landroid/widget/TextView;

    .line 260
    const v4, 0x10202d1

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mNewBuildButton:Landroid/widget/ImageView;

    .line 261
    const v4, 0x10202d2

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhoneButton:Landroid/widget/ImageView;

    .line 263
    const v4, 0x10202d3

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mContactButton:Landroid/widget/ImageView;

    .line 266
    const v4, 0x10202d5

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mDispTelephoneNumberOrGroup:Landroid/widget/TextView;

    .line 269
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 270
    .local v1, now:J
    long-to-int v4, v1

    and-int/lit8 v3, v4, 0xf

    .line 271
    .local v3, num:I
    const/16 v4, 0x9

    if-ge v3, v4, :cond_0

    .line 274
    const v4, 0x10803be

    iput v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mNoPhotoResource:I

    .line 287
    :goto_0
    new-instance v4, Lcom/oppo/widget/OppoContactHeaderWidget$QueryHandler;

    iget-object v5, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v4, p0, v5}, Lcom/oppo/widget/OppoContactHeaderWidget$QueryHandler;-><init>(Lcom/oppo/widget/OppoContactHeaderWidget;Landroid/content/ContentResolver;)V

    iput-object v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mQueryHandler:Lcom/oppo/widget/OppoContactHeaderWidget$QueryHandler;

    .line 289
    iget-object v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhotoView:Lcom/oppo/widget/OppoQuickContactBadge;

    invoke-virtual {v4, p0}, Lcom/oppo/widget/OppoQuickContactBadge;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    iget-object v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mStarredView:Landroid/widget/CheckBox;

    invoke-virtual {v4, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    iget-object v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mNewBuildButton:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iget-object v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhoneButton:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    iget-object v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mContactButton:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    return-void

    .line 276
    :cond_0
    const/16 v4, 0xe

    if-ge v3, v4, :cond_1

    .line 279
    const v4, 0x10803bf

    iput v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mNoPhotoResource:I

    goto :goto_0

    .line 284
    :cond_1
    const v4, 0x10803c0

    iput v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mNoPhotoResource:I

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/oppo/widget/OppoContactHeaderWidget;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhoneNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/oppo/widget/OppoContactHeaderWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mNameIsExisted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/oppo/widget/OppoContactHeaderWidget;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhoneButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oppo/widget/OppoContactHeaderWidget;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mNewBuildButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oppo/widget/OppoContactHeaderWidget;)Lcom/oppo/widget/OppoQuickContactBadge;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhotoView:Lcom/oppo/widget/OppoQuickContactBadge;

    return-object v0
.end method

.method private loadContactPhoto(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "photoId"
    .parameter "options"

    .prologue
    .line 902
    const/4 v7, 0x0

    .line 903
    .local v7, photoCursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 907
    .local v6, photoBm:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data15"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 912
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 914
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 915
    .local v8, photoData:[B
    const/4 v0, 0x0

    array-length v1, v8

    invoke-static {v8, v0, v1, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 921
    .end local v8           #photoData:[B
    :cond_0
    if-eqz v7, :cond_1

    .line 923
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 927
    :cond_1
    return-object v6

    .line 921
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 923
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private loadPlaceholderPhoto(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "options"

    .prologue
    .line 932
    iget v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mNoPhotoResource:I

    if-nez v0, :cond_0

    .line 934
    const/4 v0, 0x0

    .line 937
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mNoPhotoResource:I

    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private performContactButtonClick()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mListener:Lcom/oppo/widget/OppoContactHeaderWidget$ContactHeaderListener;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mListener:Lcom/oppo/widget/OppoContactHeaderWidget$ContactHeaderListener;

    iget-object v1, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhotoView:Lcom/oppo/widget/OppoQuickContactBadge;

    invoke-interface {v0, v1}, Lcom/oppo/widget/OppoContactHeaderWidget$ContactHeaderListener;->onContactButtonClick(Landroid/view/View;)V

    .line 150
    :cond_0
    return-void
.end method

.method private performDisplayNameClick()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mListener:Lcom/oppo/widget/OppoContactHeaderWidget$ContactHeaderListener;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mListener:Lcom/oppo/widget/OppoContactHeaderWidget$ContactHeaderListener;

    iget-object v1, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Lcom/oppo/widget/OppoContactHeaderWidget$ContactHeaderListener;->onDisplayNameClick(Landroid/view/View;)V

    .line 125
    :cond_0
    return-void
.end method

.method private performNewBuildButtonClick()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mListener:Lcom/oppo/widget/OppoContactHeaderWidget$ContactHeaderListener;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mListener:Lcom/oppo/widget/OppoContactHeaderWidget$ContactHeaderListener;

    iget-object v1, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhotoView:Lcom/oppo/widget/OppoQuickContactBadge;

    invoke-interface {v0, v1}, Lcom/oppo/widget/OppoContactHeaderWidget$ContactHeaderListener;->onNewBuildButtonClick(Landroid/view/View;)V

    .line 133
    :cond_0
    return-void
.end method

.method private performPhoneButtonClick()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mListener:Lcom/oppo/widget/OppoContactHeaderWidget$ContactHeaderListener;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mListener:Lcom/oppo/widget/OppoContactHeaderWidget$ContactHeaderListener;

    iget-object v1, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhotoView:Lcom/oppo/widget/OppoQuickContactBadge;

    invoke-interface {v0, v1}, Lcom/oppo/widget/OppoContactHeaderWidget$ContactHeaderListener;->onPhoneButtonClick(Landroid/view/View;)V

    .line 141
    :cond_0
    return-void
.end method

.method private performPhotoClick()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mListener:Lcom/oppo/widget/OppoContactHeaderWidget$ContactHeaderListener;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mListener:Lcom/oppo/widget/OppoContactHeaderWidget$ContactHeaderListener;

    iget-object v1, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhotoView:Lcom/oppo/widget/OppoQuickContactBadge;

    invoke-interface {v0, v1}, Lcom/oppo/widget/OppoContactHeaderWidget$ContactHeaderListener;->onPhotoClick(Landroid/view/View;)V

    .line 117
    :cond_0
    return-void
.end method

.method private performStarredClick()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mListener:Lcom/oppo/widget/OppoContactHeaderWidget$ContactHeaderListener;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mListener:Lcom/oppo/widget/OppoContactHeaderWidget$ContactHeaderListener;

    iget-object v1, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mStarredView:Landroid/widget/CheckBox;

    invoke-interface {v0, v1}, Lcom/oppo/widget/OppoContactHeaderWidget$ContactHeaderListener;->onStarredViewClick(Landroid/view/View;)V

    .line 159
    :cond_0
    return-void
.end method

.method private startContactQuery(Landroid/net/Uri;)V
    .locals 8
    .parameter "contactUri"

    .prologue
    const/4 v2, 0x0

    .line 695
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mQueryHandler:Lcom/oppo/widget/OppoContactHeaderWidget$QueryHandler;

    const/4 v1, 0x0

    sget-object v4, Lcom/oppo/widget/OppoContactHeaderWidget$ContactQuery;->COLUMNS:[Ljava/lang/String;

    move-object v3, p1

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/oppo/widget/OppoContactHeaderWidget$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    return-void
.end method


# virtual methods
.method protected bindContactInfo(Landroid/database/Cursor;)V
    .locals 26
    .parameter "c"

    .prologue
    .line 704
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_1

    .line 845
    :cond_0
    :goto_0
    return-void

    .line 707
    :cond_1
    const/4 v4, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 708
    .local v12, displayName:Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 709
    .local v10, contactId:J
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 710
    .local v16, lookupKey:Ljava/lang/String;
    const/16 v17, 0x0

    .line 712
    .local v17, phoneticName:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoContactHeaderWidget;->getWidgetType()I

    move-result v4

    if-nez v4, :cond_6

    .line 714
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoContactHeaderWidget;->getGroupsType()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/oppo/widget/OppoContactHeaderWidget;->mDisplayPhNumberOrGroups:Ljava/lang/String;

    .line 720
    :cond_2
    :goto_1
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oppo/widget/OppoContactHeaderWidget;->mDisplayPhNumberOrGroups:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v4, v5}, Lcom/oppo/widget/OppoContactHeaderWidget;->setDisplayName(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 722
    const/4 v4, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_7

    const/16 v23, 0x1

    .line 723
    .local v23, starred:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/widget/OppoContactHeaderWidget;->mStarredView:Landroid/widget/CheckBox;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 726
    const/4 v4, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/oppo/widget/OppoContactHeaderWidget;->loadContactPhoto(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 727
    .local v18, photoBitmap:Landroid/graphics/Bitmap;
    if-nez v18, :cond_3

    .line 729
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/oppo/widget/OppoContactHeaderWidget;->loadPlaceholderPhoto(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 731
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhotoView:Lcom/oppo/widget/OppoQuickContactBadge;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/oppo/widget/OppoQuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 735
    const/4 v4, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_8

    .line 737
    const/4 v4, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 738
    .local v20, presence:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPresenceView:Landroid/widget/ImageView;

    invoke-static/range {v20 .. v20}, Landroid/provider/ContactsContract$StatusUpdates;->getPresenceIconResourceId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 739
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPresenceView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 747
    .end local v20           #presence:I
    :goto_3
    const/4 v4, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 748
    .local v24, status:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 750
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/widget/OppoContactHeaderWidget;->mStatusView:Landroid/widget/TextView;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 751
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/widget/OppoContactHeaderWidget;->mStatusView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 753
    const/16 v25, 0x0

    .line 755
    .local v25, timestamp:Ljava/lang/CharSequence;
    const/4 v4, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 757
    const/4 v4, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 761
    .local v2, date:J
    const/high16 v8, 0x4

    .line 763
    .local v8, flags:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    invoke-static/range {v2 .. v8}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v25

    .line 767
    .end local v2           #date:J
    .end local v8           #flags:I
    :cond_4
    const/4 v14, 0x0

    .line 769
    .local v14, label:Ljava/lang/String;
    const/16 v4, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 771
    const/16 v4, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 772
    .local v21, resPackage:Ljava/lang/String;
    const/16 v4, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 775
    .local v15, labelResource:I
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 777
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoContactHeaderWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 794
    .local v22, resources:Landroid/content/res/Resources;
    :goto_4
    if-eqz v22, :cond_5

    .line 798
    :try_start_0
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v14

    .line 809
    .end local v15           #labelResource:I
    .end local v21           #resPackage:Ljava/lang/String;
    .end local v22           #resources:Landroid/content/res/Resources;
    :cond_5
    :goto_5
    if-eqz v25, :cond_a

    if-eqz v14, :cond_a

    .line 811
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoContactHeaderWidget;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040561

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v25, v6, v7

    const/4 v7, 0x1

    aput-object v14, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 830
    .local v9, attribution:Ljava/lang/CharSequence;
    :goto_6
    if-eqz v9, :cond_d

    .line 832
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/widget/OppoContactHeaderWidget;->mStatusAttributionView:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 833
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/widget/OppoContactHeaderWidget;->mStatusAttributionView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 716
    .end local v9           #attribution:Ljava/lang/CharSequence;
    .end local v14           #label:Ljava/lang/String;
    .end local v18           #photoBitmap:Landroid/graphics/Bitmap;
    .end local v23           #starred:Z
    .end local v24           #status:Ljava/lang/String;
    .end local v25           #timestamp:Ljava/lang/CharSequence;
    :cond_6
    const/4 v4, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoContactHeaderWidget;->getWidgetType()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 718
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhoneNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/oppo/widget/OppoContactHeaderWidget;->mDisplayPhNumberOrGroups:Ljava/lang/String;

    goto/16 :goto_1

    .line 722
    :cond_7
    const/16 v23, 0x0

    goto/16 :goto_2

    .line 743
    .restart local v18       #photoBitmap:Landroid/graphics/Bitmap;
    .restart local v23       #starred:Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPresenceView:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 781
    .restart local v14       #label:Ljava/lang/String;
    .restart local v15       #labelResource:I
    .restart local v21       #resPackage:Ljava/lang/String;
    .restart local v24       #status:Ljava/lang/String;
    .restart local v25       #timestamp:Ljava/lang/CharSequence;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoContactHeaderWidget;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 784
    .local v19, pm:Landroid/content/pm/PackageManager;
    :try_start_1
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v22

    .restart local v22       #resources:Landroid/content/res/Resources;
    goto :goto_4

    .line 786
    .end local v22           #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v13

    .line 788
    .local v13, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "OppoContactHeaderWidget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Contact status update resource package not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    const/16 v22, 0x0

    .restart local v22       #resources:Landroid/content/res/Resources;
    goto/16 :goto_4

    .line 800
    .end local v13           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v19           #pm:Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v13

    .line 802
    .local v13, e:Landroid/content/res/Resources$NotFoundException;
    const-string v4, "OppoContactHeaderWidget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Contact status update resource not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 815
    .end local v13           #e:Landroid/content/res/Resources$NotFoundException;
    .end local v15           #labelResource:I
    .end local v21           #resPackage:Ljava/lang/String;
    .end local v22           #resources:Landroid/content/res/Resources;
    :cond_a
    if-nez v25, :cond_b

    if-eqz v14, :cond_b

    .line 817
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoContactHeaderWidget;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040562

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v14, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .restart local v9       #attribution:Ljava/lang/CharSequence;
    goto/16 :goto_6

    .line 821
    .end local v9           #attribution:Ljava/lang/CharSequence;
    :cond_b
    if-eqz v25, :cond_c

    .line 823
    move-object/from16 v9, v25

    .restart local v9       #attribution:Ljava/lang/CharSequence;
    goto/16 :goto_6

    .line 827
    .end local v9           #attribution:Ljava/lang/CharSequence;
    :cond_c
    const/4 v9, 0x0

    .restart local v9       #attribution:Ljava/lang/CharSequence;
    goto/16 :goto_6

    .line 837
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/widget/OppoContactHeaderWidget;->mStatusAttributionView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 842
    .end local v9           #attribution:Ljava/lang/CharSequence;
    .end local v14           #label:Ljava/lang/String;
    .end local v25           #timestamp:Ljava/lang/CharSequence;
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/widget/OppoContactHeaderWidget;->mStatusView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 843
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/widget/OppoContactHeaderWidget;->mStatusAttributionView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public bindFromContactLookupUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "contactLookupUri"

    .prologue
    .line 632
    iput-object p1, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mContactUri:Landroid/net/Uri;

    .line 633
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoContactHeaderWidget;->startContactQuery(Landroid/net/Uri;)V

    .line 634
    return-void
.end method

.method public bindFromContactUri(Landroid/net/Uri;)V
    .locals 2
    .parameter "contactUri"

    .prologue
    .line 644
    iput-object p1, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mContactUri:Landroid/net/Uri;

    .line 645
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 647
    .local v0, contactId:J
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoContactHeaderWidget;->startContactQuery(Landroid/net/Uri;)V

    .line 648
    return-void
.end method

.method public bindFromEmail(Ljava/lang/String;)V
    .locals 8
    .parameter "emailAddress"

    .prologue
    const/4 v5, 0x0

    .line 660
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mQueryHandler:Lcom/oppo/widget/OppoContactHeaderWidget$QueryHandler;

    const/4 v1, 0x2

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/oppo/widget/OppoContactHeaderWidget;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v2, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/oppo/widget/OppoContactHeaderWidget$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    return-void
.end method

.method public bindFromPhoneNumber(Ljava/lang/String;)V
    .locals 8
    .parameter "number"

    .prologue
    const/4 v5, 0x0

    .line 676
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mQueryHandler:Lcom/oppo/widget/OppoContactHeaderWidget$QueryHandler;

    const/4 v1, 0x1

    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/oppo/widget/OppoContactHeaderWidget;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v2, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/oppo/widget/OppoContactHeaderWidget$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    return-void
.end method

.method public enableClickListeners()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhotoView:Lcom/oppo/widget/OppoQuickContactBadge;

    invoke-virtual {v0, p0}, Lcom/oppo/widget/OppoQuickContactBadge;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mStarredView:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mNewBuildButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhoneButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mContactButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    return-void
.end method

.method public getGroupsType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mGroupsType:Ljava/lang/String;

    return-object v0
.end method

.method public getWidgetType()I
    .locals 1

    .prologue
    .line 424
    iget v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mWidgetType:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 849
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 898
    :goto_0
    :pswitch_0
    return-void

    .line 853
    :pswitch_1
    invoke-direct {p0}, Lcom/oppo/widget/OppoContactHeaderWidget;->performStarredClick()V

    goto :goto_0

    .line 859
    :pswitch_2
    invoke-direct {p0}, Lcom/oppo/widget/OppoContactHeaderWidget;->performPhotoClick()V

    goto :goto_0

    .line 865
    :pswitch_3
    invoke-direct {p0}, Lcom/oppo/widget/OppoContactHeaderWidget;->performDisplayNameClick()V

    goto :goto_0

    .line 872
    :pswitch_4
    invoke-direct {p0}, Lcom/oppo/widget/OppoContactHeaderWidget;->performNewBuildButtonClick()V

    goto :goto_0

    .line 886
    :pswitch_5
    invoke-direct {p0}, Lcom/oppo/widget/OppoContactHeaderWidget;->performPhoneButtonClick()V

    goto :goto_0

    .line 893
    :pswitch_6
    invoke-direct {p0}, Lcom/oppo/widget/OppoContactHeaderWidget;->performContactButtonClick()V

    goto :goto_0

    .line 849
    :pswitch_data_0
    .packed-switch 0x10202cb
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
    .end packed-switch
.end method

.method public setContactUri(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 465
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oppo/widget/OppoContactHeaderWidget;->setContactUri(Landroid/net/Uri;Z)V

    .line 466
    return-void
.end method

.method public setContactUri(Landroid/net/Uri;Z)V
    .locals 0
    .parameter "uri"
    .parameter "sendToFastrack"

    .prologue
    .line 473
    iput-object p1, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mContactUri:Landroid/net/Uri;

    .line 474
    if-eqz p2, :cond_0

    .line 478
    :cond_0
    return-void
.end method

.method public setDisplayName(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "displayName"
    .parameter "phoneticName"

    .prologue
    .line 568
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhoneticNameView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhoneticNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    :cond_0
    return-void
.end method

.method public setDisplayName(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "displayName"
    .parameter "phoneticName"
    .parameter "numbetOrGroups"

    .prologue
    .line 581
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhoneticNameView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 588
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhoneticNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 591
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mDispTelephoneNumberOrGroup:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 593
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mDispTelephoneNumberOrGroup:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    :cond_2
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 504
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    return-void
.end method

.method public setExcludeMimes([Ljava/lang/String;)V
    .locals 1
    .parameter "excludeMimes"

    .prologue
    .line 620
    iput-object p1, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mExcludeMimes:[Ljava/lang/String;

    .line 621
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhotoView:Lcom/oppo/widget/OppoQuickContactBadge;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoQuickContactBadge;->setExcludeMimes([Ljava/lang/String;)V

    .line 622
    return-void
.end method

.method public setGroupsType(Ljava/lang/String;)V
    .locals 0
    .parameter "groupsType"

    .prologue
    .line 435
    iput-object p1, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mGroupsType:Ljava/lang/String;

    .line 436
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 1
    .parameter "telenumber"

    .prologue
    .line 513
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mDispTelephoneNumberOrGroup:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    return-void
.end method

.method public setOppoContactHeaderListener(Lcom/oppo/widget/OppoContactHeaderWidget$ContactHeaderListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mListener:Lcom/oppo/widget/OppoContactHeaderWidget$ContactHeaderListener;

    .line 109
    return-void
.end method

.method public setPhoto(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 495
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhotoView:Lcom/oppo/widget/OppoQuickContactBadge;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoQuickContactBadge;->setImageResource(I)V

    .line 496
    return-void
.end method

.method public setPhoto(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 486
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhotoView:Lcom/oppo/widget/OppoQuickContactBadge;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoQuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 487
    return-void
.end method

.method public setPresence(I)V
    .locals 2
    .parameter "presence"

    .prologue
    .line 457
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPresenceView:Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/provider/ContactsContract$StatusUpdates;->getPresenceIconResourceId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 458
    return-void
.end method

.method public setShowExistNumberButton()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 535
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mNewBuildButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 536
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mNewBuildButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setExtendable(Z)V

    .line 537
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhoneButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 538
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhoneButton:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setExtendable(Z)V

    .line 540
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mContactButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 541
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mContactButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setExtendable(Z)V

    .line 543
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhoneButton:Landroid/widget/ImageView;

    const v1, 0x10805f0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 544
    return-void
.end method

.method public setShowSearchContactButton()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 519
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mNewBuildButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 520
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mNewBuildButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setExtendable(Z)V

    .line 521
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhoneButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 522
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhoneButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setExtendable(Z)V

    .line 524
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mContactButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 525
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mContactButton:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setExtendable(Z)V

    .line 527
    return-void
.end method

.method public setShowUnkownNumberButton()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 551
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mNewBuildButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 552
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mNewBuildButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setExtendable(Z)V

    .line 553
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhoneButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 554
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhoneButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setExtendable(Z)V

    .line 556
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mContactButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 557
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhoneButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setExtendable(Z)V

    .line 559
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhoneButton:Landroid/widget/ImageView;

    const v1, 0x1080651

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 560
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mNewBuildButton:Landroid/widget/ImageView;

    const v1, 0x10805ad

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 561
    return-void
.end method

.method public setSocialSnippet(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "snippet"

    .prologue
    .line 602
    if-nez p1, :cond_0

    .line 604
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mStatusView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 611
    :goto_0
    return-void

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mStatusView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setStared(Z)V
    .locals 1
    .parameter "starred"

    .prologue
    .line 449
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mStarredView:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 450
    return-void
.end method

.method public setWidgetType(I)V
    .locals 0
    .parameter "iWidgetType"

    .prologue
    .line 419
    iput p1, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mWidgetType:I

    .line 420
    return-void
.end method

.method public showAggregateBadge(Z)V
    .locals 2
    .parameter "showBagde"

    .prologue
    .line 388
    iget-object v1, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mAggregateBadge:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 389
    return-void

    .line 388
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showButton(ZZ)V
    .locals 4
    .parameter "showNewBuildButton"
    .parameter "showPhoneButton"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 404
    iget-object v3, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mNewBuildButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhoneButton:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 409
    return-void

    :cond_0
    move v0, v2

    .line 404
    goto :goto_0

    :cond_1
    move v1, v2

    .line 405
    goto :goto_1
.end method

.method public showStar(Z)V
    .locals 2
    .parameter "showStar"

    .prologue
    .line 396
    iget-object v1, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mStarredView:Landroid/widget/CheckBox;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 397
    return-void

    .line 396
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public wipeClean()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 688
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoContactHeaderWidget;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 689
    iput-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mContactUri:Landroid/net/Uri;

    .line 690
    iput-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mExcludeMimes:[Ljava/lang/String;

    .line 691
    return-void
.end method
