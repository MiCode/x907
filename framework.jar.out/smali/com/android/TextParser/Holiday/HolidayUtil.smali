.class public Lcom/android/TextParser/Holiday/HolidayUtil;
.super Ljava/lang/Object;
.source "HolidayUtil.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final HOLIDAY_PREFERENCE:Ljava/lang/String; = "HolidayPreference"

.field private static final IS_SINGLE_WALLPAPER:Ljava/lang/String; = "isSingleWallpaperBeforeHoliday"

.field private static final LIVEWALLPAPER:Ljava/lang/String; = "livewallpaper"

.field private static final LIVEWALLPAPER_FILE:Ljava/io/File; = null

.field private static final TAG:Ljava/lang/String; = "HolidayUtil"

.field public static final WALLINFO_PATH:Ljava/lang/String; = "/data/data/com.android.settings/files/a.dat"

.field private static final WALLPAPER_BAK:Ljava/lang/String; = "wallpaperbak"

.field private static final WALLPAPER_DIR:Ljava/io/File;

.field private static final WALLPAPER_FILE_BAK:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.android.settings/files"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/TextParser/Holiday/HolidayUtil;->WALLPAPER_DIR:Ljava/io/File;

    .line 33
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/TextParser/Holiday/HolidayUtil;->WALLPAPER_DIR:Ljava/io/File;

    const-string/jumbo v2, "wallpaperbak"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/TextParser/Holiday/HolidayUtil;->WALLPAPER_FILE_BAK:Ljava/io/File;

    .line 34
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/TextParser/Holiday/HolidayUtil;->WALLPAPER_DIR:Ljava/io/File;

    const-string/jumbo v2, "livewallpaper"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/TextParser/Holiday/HolidayUtil;->LIVEWALLPAPER_FILE:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getComponent()Landroid/content/ComponentName;
    .locals 9

    .prologue
    .line 181
    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v6, Lcom/android/TextParser/Holiday/HolidayUtil;->WALLPAPER_DIR:Ljava/io/File;

    const-string/jumbo v7, "livewallpaper"

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 182
    .local v1, file:Ljava/io/File;
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 183
    .local v2, fileReader:Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 184
    .local v0, ch:I
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v6, ""

    invoke-direct {v4, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 186
    .local v4, stringBuffer:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v2}, Ljava/io/FileReader;->read()I

    move-result v0

    const/4 v6, -0x1

    if-eq v0, v6, :cond_0

    .line 188
    int-to-char v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 195
    .end local v0           #ch:I
    .end local v2           #fileReader:Ljava/io/FileReader;
    .end local v4           #stringBuffer:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v6

    .line 201
    :goto_1
    const/4 v6, 0x0

    :goto_2
    return-object v6

    .line 190
    .restart local v0       #ch:I
    .restart local v2       #fileReader:Ljava/io/FileReader;
    .restart local v4       #stringBuffer:Ljava/lang/StringBuffer;
    :cond_0
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 191
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, str:Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 194
    .local v5, strings:[Ljava/lang/String;
    new-instance v6, Landroid/content/ComponentName;

    const/4 v7, 0x0

    aget-object v7, v5, v7

    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 197
    .end local v0           #ch:I
    .end local v2           #fileReader:Ljava/io/FileReader;
    .end local v3           #str:Ljava/lang/String;
    .end local v4           #stringBuffer:Ljava/lang/StringBuffer;
    .end local v5           #strings:[Ljava/lang/String;
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method public static isUserLivePaper()Z
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lcom/android/TextParser/Holiday/HolidayUtil;->LIVEWALLPAPER_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static openObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .parameter "fileName"

    .prologue
    .line 63
    const/4 v3, 0x0

    .line 65
    .local v3, oiT:Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, fs:Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 67
    .local v2, oi:Ljava/io/ObjectInputStream;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 69
    .local v1, obj:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 70
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v0           #fs:Ljava/io/FileInputStream;
    .end local v1           #obj:Ljava/lang/Object;
    .end local v2           #oi:Ljava/io/ObjectInputStream;
    :goto_0
    return-object v1

    .line 73
    :catch_0
    move-exception v4

    move-object v1, v3

    .line 77
    goto :goto_0
.end method

.method public static saveObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "fileName"
    .parameter "obj"

    .prologue
    .line 83
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, fi:Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 85
    .local v1, os:Ljava/io/ObjectOutputStream;
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 86
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 87
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v0           #fi:Ljava/io/FileOutputStream;
    .end local v1           #os:Ljava/io/ObjectOutputStream;
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static setBackWallPaper(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    .line 122
    const-string/jumbo v8, "wallpaper"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/WallpaperManager;

    .line 123
    .local v7, wpm:Landroid/app/WallpaperManager;
    const-string v8, "/data/data/com.android.settings/files/a.dat"

    invoke-static {v8}, Landroid/app/WallpaperManager;->openObjectAidl(Ljava/lang/String;)Landroid/app/WallPaperSetInfo;

    move-result-object v5

    .line 124
    .local v5, wallPaperSetInfo:Landroid/app/WallPaperSetInfo;
    if-nez v5, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-boolean v8, v5, Landroid/app/WallPaperSetInfo;->mIsSetHolidayWallPaper:Z

    if-eqz v8, :cond_0

    .line 126
    invoke-static {}, Landroid/app/WallpaperManager;->isUserLivePaperAidl()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 127
    iput-boolean v9, v5, Landroid/app/WallPaperSetInfo;->mIsSetHolidayWallPaper:Z

    .line 128
    const-string v8, "/data/data/com.android.settings/files/a.dat"

    invoke-static {v8, v5}, Landroid/app/WallpaperManager;->saveObjectAidl(Ljava/lang/String;Landroid/app/WallPaperSetInfo;)V

    .line 129
    invoke-static {}, Landroid/app/WallpaperManager;->getComponentAidl()Landroid/content/ComponentName;

    move-result-object v1

    .line 131
    .local v1, componentName:Landroid/content/ComponentName;
    :try_start_0
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v6

    .line 132
    .local v6, wallpaperManager:Landroid/app/WallpaperManager;
    invoke-virtual {v6}, Landroid/app/WallpaperManager;->getIWallpaperManager()Landroid/app/IWallpaperManager;

    move-result-object v8

    invoke-interface {v8, v1}, Landroid/app/IWallpaperManager;->setWallpaperComponent(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 133
    .end local v6           #wallpaperManager:Landroid/app/WallpaperManager;
    :catch_0
    move-exception v2

    .line 134
    .local v2, e:Landroid/os/RemoteException;
    invoke-static {p0}, Lcom/android/TextParser/Holiday/HolidayUtil;->setDefaultWallPaper(Landroid/content/Context;)V

    goto :goto_0

    .line 135
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 136
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-static {p0}, Lcom/android/TextParser/Holiday/HolidayUtil;->setDefaultWallPaper(Landroid/content/Context;)V

    goto :goto_0

    .line 139
    .end local v1           #componentName:Landroid/content/ComponentName;
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :cond_2
    iput-boolean v9, v5, Landroid/app/WallPaperSetInfo;->mIsSetHolidayWallPaper:Z

    .line 140
    const-string v8, "/data/data/com.android.settings/files/a.dat"

    invoke-static {v8, v5}, Landroid/app/WallpaperManager;->saveObjectAidl(Ljava/lang/String;Landroid/app/WallPaperSetInfo;)V

    .line 141
    invoke-static {}, Landroid/app/WallpaperManager;->isWallPaperBakExistsAidl()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 143
    const-string v8, "HolidayPreference"

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 144
    .local v4, mPreferences:Landroid/content/SharedPreferences;
    const-string/jumbo v8, "isSingleWallpaperBeforeHoliday"

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 148
    .local v0, b:Z
    :try_start_1
    invoke-virtual {v7}, Landroid/app/WallpaperManager;->getBakWallPaperInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 150
    .local v3, inputStream:Ljava/io/InputStream;
    if-eqz v0, :cond_3

    .line 151
    invoke-virtual {v7, v3}, Landroid/app/WallpaperManager;->setSingleWallPaper(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 156
    .end local v3           #inputStream:Ljava/io/InputStream;
    :catch_2
    move-exception v2

    .line 157
    .local v2, e:Ljava/io/IOException;
    invoke-static {p0}, Lcom/android/TextParser/Holiday/HolidayUtil;->setDefaultWallPaper(Landroid/content/Context;)V

    goto :goto_0

    .line 153
    .end local v2           #e:Ljava/io/IOException;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    :cond_3
    :try_start_2
    invoke-virtual {v7, v3}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 160
    .end local v0           #b:Z
    .end local v3           #inputStream:Ljava/io/InputStream;
    .end local v4           #mPreferences:Landroid/content/SharedPreferences;
    :cond_4
    invoke-static {p0}, Lcom/android/TextParser/Holiday/HolidayUtil;->setDefaultWallPaper(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static setDefaultWallPaper(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 167
    const-string/jumbo v1, "wallpaper"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    .line 169
    .local v0, wpm:Landroid/app/WallpaperManager;
    const v1, 0x10802be

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->setResource(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setWallpaper(ILandroid/content/Context;)V
    .locals 7
    .parameter "resid"
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 95
    const-string/jumbo v4, "wallpaper"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/WallpaperManager;

    .line 96
    .local v3, wpm:Landroid/app/WallpaperManager;
    const-string v4, "/data/data/com.android.settings/files/a.dat"

    invoke-static {v4}, Landroid/app/WallpaperManager;->openObjectAidl(Ljava/lang/String;)Landroid/app/WallPaperSetInfo;

    move-result-object v2

    .line 98
    .local v2, wallPaperSetInfo:Landroid/app/WallPaperSetInfo;
    if-nez v2, :cond_0

    .line 99
    new-instance v2, Landroid/app/WallPaperSetInfo;

    .end local v2           #wallPaperSetInfo:Landroid/app/WallPaperSetInfo;
    invoke-direct {v2}, Landroid/app/WallPaperSetInfo;-><init>()V

    .line 102
    .restart local v2       #wallPaperSetInfo:Landroid/app/WallPaperSetInfo;
    :cond_0
    iput-boolean v6, v2, Landroid/app/WallPaperSetInfo;->mIsSetHolidayWallPaper:Z

    .line 103
    const-string v4, "/data/data/com.android.settings/files/a.dat"

    invoke-static {v4, v2}, Landroid/app/WallpaperManager;->saveObjectAidl(Ljava/lang/String;Landroid/app/WallPaperSetInfo;)V

    .line 105
    const-string v4, "HolidayPreference"

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 106
    .local v1, mPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "isSingleWallpaperBeforeHoliday"

    iget-boolean v6, v2, Landroid/app/WallPaperSetInfo;->mIsSingleWallPaper:Z

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 110
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v4}, Landroid/app/WallpaperManager;->setSaveBakFlag(Z)V

    .line 113
    invoke-virtual {v3, p0}, Landroid/app/WallpaperManager;->setResource(I)V

    .line 114
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/WallpaperManager;->setSaveBakFlag(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 117
    .local v0, e:Ljava/io/IOException;
    goto :goto_0
.end method
