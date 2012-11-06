.class public Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;
.super Ljava/lang/Object;
.source "BluetoothPbapVcardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FilterVcard"
.end annotation


# instance fields
.field private final ADR_BIT:I

.field private final BDAY_BIT:I

.field private final EMAIL_BIT:I

.field private final FN_BIT:I

.field private final NICKNAME_BIT:I

.field private final NOTES_BIT:I

.field private final ORG_BIT:I

.field private final PHOTO_BIT:I

.field private final TITLE_BIT:I

.field private final URL_BIT:I

.field private adr:Z

.field private bday:Z

.field private email:Z

.field private fn:Z

.field private nickname:Z

.field private notes:Z

.field private org:Z

.field private photo:Z

.field final synthetic this$0:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

.field private title:Z

.field private url:Z


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 869
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 872
    iput v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->FN_BIT:I

    .line 874
    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->fn:Z

    .line 876
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->PHOTO_BIT:I

    .line 878
    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->photo:Z

    .line 881
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->BDAY_BIT:I

    .line 883
    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->bday:Z

    .line 885
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->ADR_BIT:I

    .line 887
    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->adr:Z

    .line 889
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->EMAIL_BIT:I

    .line 891
    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->email:Z

    .line 893
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->TITLE_BIT:I

    .line 895
    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->title:Z

    .line 897
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->ORG_BIT:I

    .line 899
    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->org:Z

    .line 901
    const/16 v0, 0x11

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->NOTES_BIT:I

    .line 903
    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->notes:Z

    .line 905
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->URL_BIT:I

    .line 907
    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->url:Z

    .line 909
    const/16 v0, 0x17

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->NICKNAME_BIT:I

    .line 911
    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->nickname:Z

    .line 870
    return-void
.end method

.method private checkbit(I[B)Z
    .locals 3
    .parameter "attr_bit"
    .parameter "filter"

    .prologue
    .line 928
    array-length v0, p2

    .line 929
    .local v0, filterlen:I
    add-int/lit8 v1, v0, -0x1

    div-int/lit8 v2, p1, 0x8

    sub-int/2addr v1, v2

    aget-byte v1, p2, v1

    rem-int/lit8 v2, p1, 0x8

    shr-int/2addr v1, v2

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    .line 930
    const/4 v1, 0x0

    .line 932
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public applyFilter(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .parameter "vCard"
    .parameter "vCardType21"

    .prologue
    .line 940
    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 943
    .local v0, attr:[Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->fn:Z

    if-nez v2, :cond_1

    if-eqz p2, :cond_1

    const-string v2, "FN"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 944
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 945
    aget-object v2, v0, v1

    const-string v3, "FN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 946
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 944
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 952
    .end local v1           #i:I
    :cond_1
    iget-boolean v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->bday:Z

    if-nez v2, :cond_3

    const-string v2, "BDAY"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 953
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 954
    aget-object v2, v0, v1

    const-string v3, "BDAY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 955
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 953
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 960
    .end local v1           #i:I
    :cond_3
    iget-boolean v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->adr:Z

    if-nez v2, :cond_5

    const-string v2, "ADR"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 961
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_5

    .line 962
    aget-object v2, v0, v1

    const-string v3, "ADR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 963
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 961
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 968
    .end local v1           #i:I
    :cond_5
    iget-boolean v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->email:Z

    if-nez v2, :cond_7

    const-string v2, "EMAIL"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 969
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    array-length v2, v0

    if-ge v1, v2, :cond_7

    .line 970
    aget-object v2, v0, v1

    const-string v3, "EMAIL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 971
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 969
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 976
    .end local v1           #i:I
    :cond_7
    iget-boolean v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->title:Z

    if-nez v2, :cond_9

    const-string v2, "TITLE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 977
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4
    array-length v2, v0

    if-ge v1, v2, :cond_9

    .line 978
    aget-object v2, v0, v1

    const-string v3, "TITLE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 979
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 977
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 984
    .end local v1           #i:I
    :cond_9
    iget-boolean v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->org:Z

    if-nez v2, :cond_b

    const-string v2, "ORG"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 985
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_b

    .line 986
    aget-object v2, v0, v1

    const-string v3, "ORG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 987
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 985
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 992
    .end local v1           #i:I
    :cond_b
    iget-boolean v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->notes:Z

    if-nez v2, :cond_d

    const-string v2, "NOTE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 993
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_6
    array-length v2, v0

    if-ge v1, v2, :cond_d

    .line 994
    aget-object v2, v0, v1

    const-string v3, "NOTE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 995
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 993
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1003
    .end local v1           #i:I
    :cond_d
    iget-boolean v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->nickname:Z

    if-eqz v2, :cond_e

    if-eqz p2, :cond_10

    :cond_e
    const-string v2, "NICKNAME"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1004
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_10

    .line 1005
    aget-object v2, v0, v1

    const-string v3, "NICKNAME"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1006
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1004
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1011
    .end local v1           #i:I
    :cond_10
    iget-boolean v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->url:Z

    if-nez v2, :cond_12

    const-string v2, "URL"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1012
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_8
    array-length v2, v0

    if-ge v1, v2, :cond_12

    .line 1013
    aget-object v2, v0, v1

    const-string v3, "URL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1014
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1012
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1018
    .end local v1           #i:I
    :cond_12
    return-object p1
.end method

.method public isPhotoEnabled()Z
    .locals 1

    .prologue
    .line 936
    iget-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->photo:Z

    return v0
.end method

.method public setFilter([B)V
    .locals 1
    .parameter "filter"

    .prologue
    .line 915
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->checkbit(I[B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->fn:Z

    .line 916
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->checkbit(I[B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->photo:Z

    .line 917
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->checkbit(I[B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->bday:Z

    .line 918
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->checkbit(I[B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->adr:Z

    .line 919
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->checkbit(I[B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->email:Z

    .line 920
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->checkbit(I[B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->title:Z

    .line 921
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->checkbit(I[B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->org:Z

    .line 922
    const/16 v0, 0x11

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->checkbit(I[B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->notes:Z

    .line 923
    const/16 v0, 0x14

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->checkbit(I[B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->url:Z

    .line 924
    const/16 v0, 0x17

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->checkbit(I[B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->nickname:Z

    .line 925
    return-void
.end method
