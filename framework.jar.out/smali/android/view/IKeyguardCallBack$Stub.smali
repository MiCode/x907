.class public abstract Landroid/view/IKeyguardCallBack$Stub;
.super Landroid/os/Binder;
.source "IKeyguardCallBack.java"

# interfaces
.implements Landroid/view/IKeyguardCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IKeyguardCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IKeyguardCallBack$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IKeyguardCallBack"

.field static final TRANSACTION_onDisplayMissCall:I = 0x1

.field static final TRANSACTION_onHideApkLockScreen:I = 0xa

.field static final TRANSACTION_onPhoneStateChanged:I = 0x8

.field static final TRANSACTION_onRefreshBatteryInfo:I = 0x4

.field static final TRANSACTION_onRefreshCarrierInfo:I = 0x6

.field static final TRANSACTION_onRingerModeChanged:I = 0x7

.field static final TRANSACTION_onScreenOffCall:I = 0x2

.field static final TRANSACTION_onScreenOnCall:I = 0x3

.field static final TRANSACTION_onSimStateChanged:I = 0x9

.field static final TRANSACTION_onTimeChanged:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.view.IKeyguardCallBack"

    invoke-virtual {p0, p0, v0}, Landroid/view/IKeyguardCallBack$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IKeyguardCallBack;
    .locals 2
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "android.view.IKeyguardCallBack"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/IKeyguardCallBack;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/view/IKeyguardCallBack;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Landroid/view/IKeyguardCallBack$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/view/IKeyguardCallBack$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 145
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 45
    :sswitch_0
    const-string v0, "android.view.IKeyguardCallBack"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v0, "android.view.IKeyguardCallBack"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 54
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 56
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 58
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, _arg4:Ljava/lang/String;
    move-object v0, p0

    .line 61
    invoke-virtual/range {v0 .. v5}, Landroid/view/IKeyguardCallBack$Stub;->onDisplayMissCall(IIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:Ljava/lang/String;
    :sswitch_2
    const-string v0, "android.view.IKeyguardCallBack"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Landroid/view/IKeyguardCallBack$Stub;->onScreenOffCall()V

    goto :goto_0

    .line 72
    :sswitch_3
    const-string v0, "android.view.IKeyguardCallBack"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Landroid/view/IKeyguardCallBack$Stub;->onScreenOnCall()V

    goto :goto_0

    .line 78
    :sswitch_4
    const-string v7, "android.view.IKeyguardCallBack"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    move v1, v6

    .line 82
    .local v1, _arg0:Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    move v2, v6

    .line 84
    .local v2, _arg1:Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 85
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v1, v2, v3}, Landroid/view/IKeyguardCallBack$Stub;->onRefreshBatteryInfo(ZZI)V

    goto :goto_0

    .end local v1           #_arg0:Z
    .end local v2           #_arg1:Z
    .end local v3           #_arg2:I
    :cond_0
    move v1, v0

    .line 80
    goto :goto_1

    .restart local v1       #_arg0:Z
    :cond_1
    move v2, v0

    .line 82
    goto :goto_2

    .line 90
    .end local v1           #_arg0:Z
    :sswitch_5
    const-string v0, "android.view.IKeyguardCallBack"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Landroid/view/IKeyguardCallBack$Stub;->onTimeChanged()V

    goto :goto_0

    .line 96
    :sswitch_6
    const-string v0, "android.view.IKeyguardCallBack"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 105
    .local v1, _arg0:Ljava/lang/CharSequence;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 106
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 111
    .local v2, _arg1:Ljava/lang/CharSequence;
    :goto_4
    invoke-virtual {p0, v1, v2}, Landroid/view/IKeyguardCallBack$Stub;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 102
    .end local v1           #_arg0:Ljava/lang/CharSequence;
    .end local v2           #_arg1:Ljava/lang/CharSequence;
    :cond_2
    const/4 v1, 0x0

    .restart local v1       #_arg0:Ljava/lang/CharSequence;
    goto :goto_3

    .line 109
    :cond_3
    const/4 v2, 0x0

    .restart local v2       #_arg1:Ljava/lang/CharSequence;
    goto :goto_4

    .line 116
    .end local v1           #_arg0:Ljava/lang/CharSequence;
    .end local v2           #_arg1:Ljava/lang/CharSequence;
    :sswitch_7
    const-string v0, "android.view.IKeyguardCallBack"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 119
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/view/IKeyguardCallBack$Stub;->onRingerModeChanged(I)V

    goto/16 :goto_0

    .line 124
    .end local v1           #_arg0:I
    :sswitch_8
    const-string v0, "android.view.IKeyguardCallBack"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/view/IKeyguardCallBack$Stub;->onPhoneStateChanged(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 132
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_9
    const-string v0, "android.view.IKeyguardCallBack"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 135
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/view/IKeyguardCallBack$Stub;->onSimStateChanged(I)V

    goto/16 :goto_0

    .line 140
    .end local v1           #_arg0:I
    :sswitch_a
    const-string v0, "android.view.IKeyguardCallBack"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Landroid/view/IKeyguardCallBack$Stub;->onHideApkLockScreen()V

    goto/16 :goto_0

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
