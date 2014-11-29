.class public abstract Lcom/motorola/android/telephony/ISMSExtService$Stub;
.super Landroid/os/Binder;
.source "ISMSExtService.java"

# interfaces
.implements Lcom/motorola/android/telephony/ISMSExtService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/ISMSExtService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/telephony/ISMSExtService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.android.telephony.ISMSExtService"

.field static final TRANSACTION_getMessageService:I = 0x5

.field static final TRANSACTION_getServiceCenterAddress:I = 0x1

.field static final TRANSACTION_getTransportMode:I = 0x3

.field static final TRANSACTION_sendCNMA:I = 0x8

.field static final TRANSACTION_setCmms:I = 0x9

.field static final TRANSACTION_setCsmpDcs:I = 0xc

.field static final TRANSACTION_setCsmpFo:I = 0xa

.field static final TRANSACTION_setCsmpPid:I = 0xb

.field static final TRANSACTION_setCsmpVp:I = 0xd

.field static final TRANSACTION_setMessageService:I = 0x6

.field static final TRANSACTION_setServiceCenterAddress:I = 0x2

.field static final TRANSACTION_setSmsMode:I = 0x7

.field static final TRANSACTION_setTransportMode:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.motorola.android.telephony.ISMSExtService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/android/telephony/ISMSExtService;
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
    const-string v1, "com.motorola.android.telephony.ISMSExtService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/motorola/android/telephony/ISMSExtService;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/motorola/android/telephony/ISMSExtService;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/motorola/android/telephony/ISMSExtService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/motorola/android/telephony/ISMSExtService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 4
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
    const/4 v2, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 180
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 46
    :sswitch_0
    const-string v3, "com.motorola.android.telephony.ISMSExtService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v3, "com.motorola.android.telephony.ISMSExtService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/motorola/android/telephony/ISMSExtService$Stub;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_2
    const-string v3, "com.motorola.android.telephony.ISMSExtService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/ISMSExtService$Stub;->setServiceCenterAddress(Ljava/lang/String;)I

    move-result v1

    .line 63
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 69
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:I
    :sswitch_3
    const-string v3, "com.motorola.android.telephony.ISMSExtService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/motorola/android/telephony/ISMSExtService$Stub;->getTransportMode()I

    move-result v1

    .line 71
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 77
    .end local v1           #_result:I
    :sswitch_4
    const-string v3, "com.motorola.android.telephony.ISMSExtService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 80
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/ISMSExtService$Stub;->setTransportMode(I)I

    move-result v1

    .line 81
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 87
    .end local v0           #_arg0:I
    .end local v1           #_result:I
    :sswitch_5
    const-string v3, "com.motorola.android.telephony.ISMSExtService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 90
    .local v0, _arg0:B
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/ISMSExtService$Stub;->getMessageService(B)Lcom/motorola/android/telephony/SmsServiceData;

    move-result-object v1

    .line 91
    .local v1, _result:Lcom/motorola/android/telephony/SmsServiceData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    invoke-virtual {v1, p3, v2}, Lcom/motorola/android/telephony/SmsServiceData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 97
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 103
    .end local v0           #_arg0:B
    .end local v1           #_result:Lcom/motorola/android/telephony/SmsServiceData;
    :sswitch_6
    const-string v3, "com.motorola.android.telephony.ISMSExtService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 106
    sget-object v3, Lcom/motorola/android/telephony/SmsServiceData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/telephony/SmsServiceData;

    .line 111
    .local v0, _arg0:Lcom/motorola/android/telephony/SmsServiceData;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/ISMSExtService$Stub;->setMessageService(Lcom/motorola/android/telephony/SmsServiceData;)I

    move-result v1

    .line 112
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 109
    .end local v0           #_arg0:Lcom/motorola/android/telephony/SmsServiceData;
    .end local v1           #_result:I
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/motorola/android/telephony/SmsServiceData;
    goto :goto_1

    .line 118
    .end local v0           #_arg0:Lcom/motorola/android/telephony/SmsServiceData;
    :sswitch_7
    const-string v3, "com.motorola.android.telephony.ISMSExtService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 121
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/ISMSExtService$Stub;->setSmsMode(I)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 127
    .end local v0           #_arg0:I
    :sswitch_8
    const-string v3, "com.motorola.android.telephony.ISMSExtService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 130
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/ISMSExtService$Stub;->sendCNMA(I)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 136
    .end local v0           #_arg0:I
    :sswitch_9
    const-string v3, "com.motorola.android.telephony.ISMSExtService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 139
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/ISMSExtService$Stub;->setCmms(I)V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 145
    .end local v0           #_arg0:I
    :sswitch_a
    const-string v3, "com.motorola.android.telephony.ISMSExtService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 148
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/ISMSExtService$Stub;->setCsmpFo(I)V

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 154
    .end local v0           #_arg0:I
    :sswitch_b
    const-string v3, "com.motorola.android.telephony.ISMSExtService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 157
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/ISMSExtService$Stub;->setCsmpPid(I)V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 163
    .end local v0           #_arg0:I
    :sswitch_c
    const-string v3, "com.motorola.android.telephony.ISMSExtService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 166
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/ISMSExtService$Stub;->setCsmpDcs(I)V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 172
    .end local v0           #_arg0:I
    :sswitch_d
    const-string v3, "com.motorola.android.telephony.ISMSExtService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 175
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/ISMSExtService$Stub;->setCsmpVp(I)V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 42
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
