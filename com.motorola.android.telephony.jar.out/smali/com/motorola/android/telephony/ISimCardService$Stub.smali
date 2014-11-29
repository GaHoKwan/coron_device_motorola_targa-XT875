.class public abstract Lcom/motorola/android/telephony/ISimCardService$Stub;
.super Landroid/os/Binder;
.source "ISimCardService.java"

# interfaces
.implements Lcom/motorola/android/telephony/ISimCardService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/ISimCardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/telephony/ISimCardService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.android.telephony.ISimCardService"

.field static final TRANSACTION_AtcAccessGenericSIM:I = 0x6

.field static final TRANSACTION_akaAuthentication:I = 0xc

.field static final TRANSACTION_changePIN:I = 0x4

.field static final TRANSACTION_closeSimSession:I = 0xa

.field static final TRANSACTION_getReadPlmnModeFlag:I = 0x5

.field static final TRANSACTION_getSimStatus:I = 0x1

.field static final TRANSACTION_getSimType:I = 0x7

.field static final TRANSACTION_gsmAuthentication:I = 0xb

.field static final TRANSACTION_openSimSession:I = 0x9

.field static final TRANSACTION_retrieveSimAppIds:I = 0x8

.field static final TRANSACTION_simIO:I = 0x2

.field static final TRANSACTION_supplyPIN:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.motorola.android.telephony.ISimCardService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/android/telephony/ISimCardService;
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
    const-string v1, "com.motorola.android.telephony.ISimCardService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/motorola/android/telephony/ISimCardService;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/motorola/android/telephony/ISimCardService;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/motorola/android/telephony/ISimCardService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/motorola/android/telephony/ISimCardService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 11
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
    const/4 v10, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 188
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v10

    :goto_0
    return v10

    .line 46
    :sswitch_0
    const-string v0, "com.motorola.android.telephony.ISimCardService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v0, "com.motorola.android.telephony.ISimCardService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/motorola/android/telephony/ISimCardService$Stub;->getSimStatus()Ljava/lang/String;

    move-result-object v9

    .line 53
    .local v9, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_2
    const-string v0, "com.motorola.android.telephony.ISimCardService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 63
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 65
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 69
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 71
    .local v5, _arg4:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 73
    .local v6, _arg5:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 75
    .local v7, _arg6:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, _arg7:Ljava/lang/String;
    move-object v0, p0

    .line 76
    invoke-virtual/range {v0 .. v8}, Lcom/motorola/android/telephony/ISimCardService$Stub;->simIO(IILjava/lang/String;III[BLjava/lang/String;)I

    move-result v9

    .line 77
    .local v9, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 83
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:I
    .end local v5           #_arg4:I
    .end local v6           #_arg5:I
    .end local v7           #_arg6:[B
    .end local v8           #_arg7:Ljava/lang/String;
    .end local v9           #_result:I
    :sswitch_3
    const-string v0, "com.motorola.android.telephony.ISimCardService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 87
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 90
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/android/telephony/ISimCardService$Stub;->supplyPIN(ILjava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 91
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 97
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v9           #_result:I
    :sswitch_4
    const-string v0, "com.motorola.android.telephony.ISimCardService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 101
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 103
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 104
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/android/telephony/ISimCardService$Stub;->changePIN(ILjava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 105
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 111
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v9           #_result:I
    :sswitch_5
    const-string v0, "com.motorola.android.telephony.ISimCardService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/motorola/android/telephony/ISimCardService$Stub;->getReadPlmnModeFlag()Z

    move-result v9

    .line 113
    .local v9, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    if-eqz v9, :cond_0

    move v0, v10

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 119
    .end local v9           #_result:Z
    :sswitch_6
    const-string v0, "com.motorola.android.telephony.ISimCardService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 123
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 124
    .local v2, _arg1:[B
    invoke-virtual {p0, v1, v2}, Lcom/motorola/android/telephony/ISimCardService$Stub;->AtcAccessGenericSIM(I[B)I

    move-result v9

    .line 125
    .local v9, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 131
    .end local v1           #_arg0:I
    .end local v2           #_arg1:[B
    .end local v9           #_result:I
    :sswitch_7
    const-string v0, "com.motorola.android.telephony.ISimCardService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/motorola/android/telephony/ISimCardService$Stub;->getSimType()Ljava/lang/String;

    move-result-object v9

    .line 133
    .local v9, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 139
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_8
    const-string v0, "com.motorola.android.telephony.ISimCardService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/motorola/android/telephony/ISimCardService$Stub;->retrieveSimAppIds()I

    move-result v9

    .line 141
    .local v9, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 147
    .end local v9           #_result:I
    :sswitch_9
    const-string v0, "com.motorola.android.telephony.ISimCardService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/motorola/android/telephony/ISimCardService$Stub;->openSimSession(Ljava/lang/String;)I

    move-result v9

    .line 151
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 157
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v9           #_result:I
    :sswitch_a
    const-string v0, "com.motorola.android.telephony.ISimCardService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 160
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/motorola/android/telephony/ISimCardService$Stub;->closeSimSession(Ljava/lang/String;)I

    move-result v9

    .line 161
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 167
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v9           #_result:I
    :sswitch_b
    const-string v0, "com.motorola.android.telephony.ISimCardService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 170
    .local v1, _arg0:[B
    invoke-virtual {p0, v1}, Lcom/motorola/android/telephony/ISimCardService$Stub;->gsmAuthentication([B)I

    move-result v9

    .line 171
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 177
    .end local v1           #_arg0:[B
    .end local v9           #_result:I
    :sswitch_c
    const-string v0, "com.motorola.android.telephony.ISimCardService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 181
    .restart local v1       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 182
    .restart local v2       #_arg1:[B
    invoke-virtual {p0, v1, v2}, Lcom/motorola/android/telephony/ISimCardService$Stub;->akaAuthentication([B[B)I

    move-result v9

    .line 183
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
