.class public abstract Lcom/motorola/android/telephony/INetwork$Stub;
.super Landroid/os/Binder;
.source "INetwork.java"

# interfaces
.implements Lcom/motorola/android/telephony/INetwork;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/INetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/telephony/INetwork$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.android.telephony.INetwork"

.field static final TRANSACTION_AtcClearMRU:I = 0x7

.field static final TRANSACTION_AtcEditAPN:I = 0xa

.field static final TRANSACTION_AtcEditMRU:I = 0x8

.field static final TRANSACTION_AtcQueryAPN:I = 0xb

.field static final TRANSACTION_AtcQueryMRU:I = 0x9

.field static final TRANSACTION_getCdmaRoamingIndicator:I = 0xc

.field static final TRANSACTION_getRawGPRSRegistrationState:I = 0x3

.field static final TRANSACTION_getRawNetworkRegistrationState:I = 0x2

.field static final TRANSACTION_queryAccessTech:I = 0x5

.field static final TRANSACTION_queryNetworkRac:I = 0x4

.field static final TRANSACTION_requestOemStrings:I = 0x6

.field static final TRANSACTION_selectNetwork:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.motorola.android.telephony.INetwork"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/android/telephony/INetwork;
    .locals 2
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "com.motorola.android.telephony.INetwork"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/motorola/android/telephony/INetwork;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/motorola/android/telephony/INetwork;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/motorola/android/telephony/INetwork$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/motorola/android/telephony/INetwork$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
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
    const/4 v7, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 177
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 46
    :sswitch_0
    const-string v0, "com.motorola.android.telephony.INetwork"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v0, "com.motorola.android.telephony.INetwork"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v1, v7

    .line 55
    .local v1, _arg0:Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    sget-object v0, Lcom/motorola/android/telephony/NetworkInfoExt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/android/telephony/NetworkInfoExt;

    .line 61
    .local v2, _arg1:Lcom/motorola/android/telephony/NetworkInfoExt;
    :goto_2
    invoke-virtual {p0, v1, v2}, Lcom/motorola/android/telephony/INetwork$Stub;->selectNetwork(ZLcom/motorola/android/telephony/NetworkInfoExt;)I

    move-result v6

    .line 62
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 53
    .end local v1           #_arg0:Z
    .end local v2           #_arg1:Lcom/motorola/android/telephony/NetworkInfoExt;
    .end local v6           #_result:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 59
    .restart local v1       #_arg0:Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/motorola/android/telephony/NetworkInfoExt;
    goto :goto_2

    .line 68
    .end local v1           #_arg0:Z
    .end local v2           #_arg1:Lcom/motorola/android/telephony/NetworkInfoExt;
    :sswitch_2
    const-string v0, "com.motorola.android.telephony.INetwork"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/motorola/android/telephony/INetwork$Stub;->getRawNetworkRegistrationState()I

    move-result v6

    .line 70
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 76
    .end local v6           #_result:I
    :sswitch_3
    const-string v0, "com.motorola.android.telephony.INetwork"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/motorola/android/telephony/INetwork$Stub;->getRawGPRSRegistrationState()I

    move-result v6

    .line 78
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 84
    .end local v6           #_result:I
    :sswitch_4
    const-string v0, "com.motorola.android.telephony.INetwork"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/motorola/android/telephony/INetwork$Stub;->queryNetworkRac()I

    move-result v6

    .line 86
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 92
    .end local v6           #_result:I
    :sswitch_5
    const-string v0, "com.motorola.android.telephony.INetwork"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 95
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/motorola/android/telephony/INetwork$Stub;->queryAccessTech(I)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 101
    .end local v1           #_arg0:I
    :sswitch_6
    const-string v0, "com.motorola.android.telephony.INetwork"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 105
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, _arg1:[Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/motorola/android/telephony/INetwork$Stub;->requestOemStrings(I[Ljava/lang/String;)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 112
    .end local v1           #_arg0:I
    .end local v2           #_arg1:[Ljava/lang/String;
    :sswitch_7
    const-string v0, "com.motorola.android.telephony.INetwork"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/motorola/android/telephony/INetwork$Stub;->AtcClearMRU()I

    move-result v6

    .line 114
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 120
    .end local v6           #_result:I
    :sswitch_8
    const-string v0, "com.motorola.android.telephony.INetwork"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 124
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 128
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 129
    .local v4, _arg3:I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/motorola/android/telephony/INetwork$Stub;->AtcEditMRU(ILjava/lang/String;II)I

    move-result v6

    .line 130
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 136
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v6           #_result:I
    :sswitch_9
    const-string v0, "com.motorola.android.telephony.INetwork"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/motorola/android/telephony/INetwork$Stub;->AtcQueryMRU()I

    move-result v6

    .line 138
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 144
    .end local v6           #_result:I
    :sswitch_a
    const-string v0, "com.motorola.android.telephony.INetwork"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 148
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 150
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 154
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, _arg4:I
    move-object v0, p0

    .line 155
    invoke-virtual/range {v0 .. v5}, Lcom/motorola/android/telephony/INetwork$Stub;->AtcEditAPN(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    .line 156
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 162
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:I
    .end local v6           #_result:I
    :sswitch_b
    const-string v0, "com.motorola.android.telephony.INetwork"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/motorola/android/telephony/INetwork$Stub;->AtcQueryAPN()I

    move-result v6

    .line 164
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 170
    .end local v6           #_result:I
    :sswitch_c
    const-string v0, "com.motorola.android.telephony.INetwork"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/motorola/android/telephony/INetwork$Stub;->getCdmaRoamingIndicator()I

    move-result v6

    .line 172
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 42
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
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
