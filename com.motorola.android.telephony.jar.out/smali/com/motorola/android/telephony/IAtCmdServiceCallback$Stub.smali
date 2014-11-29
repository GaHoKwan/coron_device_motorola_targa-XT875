.class public abstract Lcom/motorola/android/telephony/IAtCmdServiceCallback$Stub;
.super Landroid/os/Binder;
.source "IAtCmdServiceCallback.java"

# interfaces
.implements Lcom/motorola/android/telephony/IAtCmdServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/IAtCmdServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/telephony/IAtCmdServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.android.telephony.IAtCmdServiceCallback"

.field static final TRANSACTION_onACCSIMComplete:I = 0x8

.field static final TRANSACTION_onAPNEQComplete:I = 0xb

.field static final TRANSACTION_onAkaAuthenticationComplete:I = 0x18

.field static final TRANSACTION_onCallDisconnect:I = 0x5

.field static final TRANSACTION_onCallFailure:I = 0x3

.field static final TRANSACTION_onCallForwardResult:I = 0x4

.field static final TRANSACTION_onCallStateChanged:I = 0x1

.field static final TRANSACTION_onCloseSimSessionComplete:I = 0x16

.field static final TRANSACTION_onComplete:I = 0x6

.field static final TRANSACTION_onGPRSRegistrationStateComplete:I = 0x10

.field static final TRANSACTION_onGsmAuthenticationComplete:I = 0x17

.field static final TRANSACTION_onMMISSComplete:I = 0x2

.field static final TRANSACTION_onMMIUSSDComplete:I = 0xe

.field static final TRANSACTION_onMRUCComplete:I = 0x9

.field static final TRANSACTION_onMRUEQComplete:I = 0xa

.field static final TRANSACTION_onNetworkStateChange:I = 0x11

.field static final TRANSACTION_onOpenSimSessionComplete:I = 0x15

.field static final TRANSACTION_onQueryAccessTechComplete:I = 0xd

.field static final TRANSACTION_onRegistrationStateComplete:I = 0xf

.field static final TRANSACTION_onRequestOemStringComplete:I = 0x12

.field static final TRANSACTION_onRetrieveSimAppIdsComplete:I = 0x14

.field static final TRANSACTION_onSIMIOComplete:I = 0x7

.field static final TRANSACTION_onSIMPINComplete:I = 0xc

.field static final TRANSACTION_onUnsolicitedOemRaw:I = 0x13


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "com.motorola.android.telephony.IAtCmdServiceCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/android/telephony/IAtCmdServiceCallback;
    .locals 2
    .parameter "obj"

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    .line 32
    :cond_0
    const-string v1, "com.motorola.android.telephony.IAtCmdServiceCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/motorola/android/telephony/IAtCmdServiceCallback;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Lcom/motorola/android/telephony/IAtCmdServiceCallback;

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Lcom/motorola/android/telephony/IAtCmdServiceCallback$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/motorola/android/telephony/IAtCmdServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
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
    const/4 v6, 0x1

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 287
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 48
    :sswitch_0
    const-string v7, "com.motorola.android.telephony.IAtCmdServiceCallback"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :sswitch_1
    const-string v7, "com.motorola.android.telephony.IAtCmdServiceCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    sget-object v7, Lcom/motorola/android/telephony/ConnectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 56
    .local v2, _arg0:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/android/telephony/ConnectionInfo;>;"
    invoke-virtual {p0, v2}, Lcom/motorola/android/telephony/IAtCmdServiceCallback$Stub;->onCallStateChanged(Ljava/util/List;)V

    goto :goto_0

    .line 61
    .end local v2           #_arg0:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/android/telephony/ConnectionInfo;>;"
    :sswitch_2
    const-string v7, "com.motorola.android.telephony.IAtCmdServiceCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 65
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 66
    .local v4, _arg1:I
    invoke-virtual {p0, v0, v4}, Lcom/motorola/android/telephony/IAtCmdServiceCallback$Stub;->onMMISSComplete(II)V

    goto :goto_0

    .line 71
    .end local v0           #_arg0:I
    .end local v4           #_arg1:I
    :sswitch_3
    const-string v7, "com.motorola.android.telephony.IAtCmdServiceCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 74
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IAtCmdServiceCallback$Stub;->onCallFailure(I)V

    goto :goto_0

    .line 79
    .end local v0           #_arg0:I
    :sswitch_4
    const-string v7, "com.motorola.android.telephony.IAtCmdServiceCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    sget-object v7, Lcom/motorola/android/telephony/CallForwardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 82
    .local v1, _arg0:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/android/telephony/CallForwardInfo;>;"
    invoke-virtual {p0, v1}, Lcom/motorola/android/telephony/IAtCmdServiceCallback$Stub;->onCallForwardResult(Ljava/util/List;)V

    goto :goto_0

    .line 87
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/android/telephony/CallForwardInfo;>;"
    :sswitch_5
    const-string v7, "com.motorola.android.telephony.IAtCmdServiceCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    .line 90
    sget-object v7, Lcom/motorola/android/telephony/ConnectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/telephony/ConnectionInfo;

    .line 95
    .local v0, _arg0:Lcom/motorola/android/telephony/ConnectionInfo;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IAtCmdServiceCallback$Stub;->onCallDisconnect(Lcom/motorola/android/telephony/ConnectionInfo;)V

    goto :goto_0

    .line 93
    .end local v0           #_arg0:Lcom/motorola/android/telephony/ConnectionInfo;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/motorola/android/telephony/ConnectionInfo;
    goto :goto_1

    .line 100
    .end local v0           #_arg0:Lcom/motorola/android/telephony/ConnectionInfo;
    :sswitch_6
    const-string v7, "com.motorola.android.telephony.IAtCmdServiceCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 104
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 106
    .restart local v4       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 107
    .local v5, _arg2:I
    invoke-virtual {p0, v0, v4, v5}, Lcom/motorola/android/telephony/IAtCmdServiceCallback$Stub;->onComplete(III)V

    goto :goto_0

    .line 112
    .end local v0           #_arg0:I
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    :sswitch_7
    const-string v7, "com.motorola.android.telephony.IAtCmdServiceCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 116
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 118
    .restart local v4       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 119
    .local v5, _arg2:[B
    invoke-virtual {p0, v0, v4, v5}, Lcom/motorola/android/telephony/IAtCmdServiceCallback$Stub;->onSIMIOComplete(II[B)V

    goto/16 :goto_0

    .line 124
    .end local v0           #_arg0:I
    .end local v4           #_arg1:I
    .end local v5           #_arg2:[B
    :sswitch_8
    const-string v7, "com.motorola.android.telephony.IAtCmdServiceCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 127
    .local v0, _arg0:[B
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IAtCmdServiceCallback$Stub;->onACCSIMComplete([B)V

    goto/16 :goto_0

    .line 132
    .end local v0           #_arg0:[B
    :sswitch_9
    const-string v7, "com.motorola.android.telephony.IAtCmdServiceCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, _arg0:[Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IAtCmdServiceCallback$Stub;->onMRUCComplete([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 140
    .end local v0           #_arg0:[Ljava/lang/String;
    :sswitch_a
    const-string v7, "com.motorola.android.telephony.IAtCmdServiceCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 144
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 146
    .restart local v4       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 147
    .local v5, _arg2:[Ljava/lang/String;
    invoke-virtual {p0, v0, v4, v5}, Lcom/motorola/android/telephony/IAtCmdServiceCallback$Stub;->onMRUEQComplete(II[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 152
    .end local v0           #_arg0:I
    .end local v4           #_arg1:I
    .end local v5           #_arg2:[Ljava/lang/String;
    :sswitch_b
    const-string v7, "com.motorola.android.telephony.IAtCmdServiceCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 156
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 158
    .restart local v4       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 159
    .restart local v5       #_arg2:[Ljava/lang/String;
    invoke-virtual {p0, v0, v4, v5}, Lcom/motorola/android/telephony/IAtCmdServiceCallback$Stub;->onAPNEQComplete(II[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 164
    .end local v0           #_arg0:I
    .end local v4           #_arg1:I
    .end local v5           #_arg2:[Ljava/lang/String;
    :sswitch_c
    const-string v7, "com.motorola.android.telephony.IAtCmdServiceCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 168
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 170
    .restart local v4       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 171
    .local v5, _arg2:I
    invoke-virtual {p0, v0, v4, v5}, Lcom/motorola/android/telephony/IAtCmdServiceCallback$Stub;->onSIMPINComplete(III)V

    goto/16 :goto_0

    .line 176
    .end local v0           #_arg0:I
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    :sswitch_d
    const-string v7, "com.motorola.android.telephony.IAtCmdServiceCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 180
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 182
    .restart local v4       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 183
    .restart local v5       #_arg2:I
    invoke-virtual {p0, v0, v4, v5}, Lcom/motorola/android/telephony/IAtCmdServiceCallback$Stub;->onQueryAccessTechComplete(III)V

    goto/16 :goto_0

    .line 188
    .end local v0           #_arg0:I
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    :sswitch_e
    const-string v7, "com.motorola.android.telephony.IAtCmdServiceCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 191
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IAtCmdServiceCallback$Stub;->onMMIUSSDComplete(I)V

    goto/16 :goto_0

    .line 196
    .end local v0           #_arg0:I
    :sswitch_f
    const-string v7, "com.motorola.android.telephony.IAtCmdServiceCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, _arg0:[Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IAtCmdServiceCallback$Stub;->onRegistrationStateComplete([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 204
    .end local v0           #_arg0:[Ljava/lang/String;
    :sswitch_10
    const-string v7, "com.motorola.android.telephony.IAtCmdServiceCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 207
    .restart local v0       #_arg0:[Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IAtCmdServiceCallback$Stub;->onGPRSRegistrationStateComplete([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 212
    .end local v0           #_arg0:[Ljava/lang/String;
    :sswitch_11
    const-string v7, "com.motorola.android.telephony.IAtCmdServiceCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IAtCmdServiceCallback$Stub;->onNetworkStateChange()V

    goto/16 :goto_0

    .line 218
    :sswitch_12
    const-string v7, "com.motorola.android.telephony.IAtCmdServiceCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 222
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 224
    .restart local v4       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 225
    .local v5, _arg2:[Ljava/lang/String;
    invoke-virtual {p0, v0, v4, v5}, Lcom/motorola/android/telephony/IAtCmdServiceCallback$Stub;->onRequestOemStringComplete(II[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 230
    .end local v0           #_arg0:I
    .end local v4           #_arg1:I
    .end local v5           #_arg2:[Ljava/lang/String;
    :sswitch_13
    const-string v7, "com.motorola.android.telephony.IAtCmdServiceCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 233
    .local v0, _arg0:[B
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IAtCmdServiceCallback$Stub;->onUnsolicitedOemRaw([B)V

    goto/16 :goto_0

    .line 238
    .end local v0           #_arg0:[B
    :sswitch_14
    const-string v7, "com.motorola.android.telephony.IAtCmdServiceCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 241
    .local v3, _arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/IAtCmdServiceCallback$Stub;->onRetrieveSimAppIdsComplete(Ljava/util/List;)V

    goto/16 :goto_0

    .line 246
    .end local v3           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_15
    const-string v7, "com.motorola.android.telephony.IAtCmdServiceCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IAtCmdServiceCallback$Stub;->onOpenSimSessionComplete(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 254
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_16
    const-string v7, "com.motorola.android.telephony.IAtCmdServiceCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 257
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IAtCmdServiceCallback$Stub;->onCloseSimSessionComplete(I)V

    goto/16 :goto_0

    .line 262
    .end local v0           #_arg0:I
    :sswitch_17
    const-string v7, "com.motorola.android.telephony.IAtCmdServiceCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    .line 265
    sget-object v7, Lcom/motorola/android/telephony/GsmAuthResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/telephony/GsmAuthResult;

    .line 270
    .local v0, _arg0:Lcom/motorola/android/telephony/GsmAuthResult;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IAtCmdServiceCallback$Stub;->onGsmAuthenticationComplete(Lcom/motorola/android/telephony/GsmAuthResult;)V

    goto/16 :goto_0

    .line 268
    .end local v0           #_arg0:Lcom/motorola/android/telephony/GsmAuthResult;
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/motorola/android/telephony/GsmAuthResult;
    goto :goto_2

    .line 275
    .end local v0           #_arg0:Lcom/motorola/android/telephony/GsmAuthResult;
    :sswitch_18
    const-string v7, "com.motorola.android.telephony.IAtCmdServiceCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2

    .line 278
    sget-object v7, Lcom/motorola/android/telephony/AkaAuthResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/telephony/AkaAuthResult;

    .line 283
    .local v0, _arg0:Lcom/motorola/android/telephony/AkaAuthResult;
    :goto_3
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IAtCmdServiceCallback$Stub;->onAkaAuthenticationComplete(Lcom/motorola/android/telephony/AkaAuthResult;)V

    goto/16 :goto_0

    .line 281
    .end local v0           #_arg0:Lcom/motorola/android/telephony/AkaAuthResult;
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/motorola/android/telephony/AkaAuthResult;
    goto :goto_3

    .line 44
    nop

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
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
