.class public abstract Lcom/motorola/android/telephony/IAtCmdService$Stub;
.super Landroid/os/Binder;
.source "IAtCmdService.java"

# interfaces
.implements Lcom/motorola/android/telephony/IAtCmdService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/IAtCmdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/telephony/IAtCmdService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.android.telephony.IAtCmdService"

.field static final TRANSACTION_getMMICodeService:I = 0x4

.field static final TRANSACTION_getNetworkService:I = 0x7

.field static final TRANSACTION_getSMSExtSerivce:I = 0x6

.field static final TRANSACTION_getSimCardService:I = 0x5

.field static final TRANSACTION_getSupplementaryService:I = 0x8

.field static final TRANSACTION_getVoiceCallService:I = 0x3

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_unRegisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.motorola.android.telephony.IAtCmdService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/android/telephony/IAtCmdService;
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
    const-string v1, "com.motorola.android.telephony.IAtCmdService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/motorola/android/telephony/IAtCmdService;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/motorola/android/telephony/IAtCmdService;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/motorola/android/telephony/IAtCmdService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/motorola/android/telephony/IAtCmdService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 5
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
    const/4 v3, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 120
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 46
    :sswitch_0
    const-string v4, "com.motorola.android.telephony.IAtCmdService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v4, "com.motorola.android.telephony.IAtCmdService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 55
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/android/telephony/IAtCmdServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/android/telephony/IAtCmdServiceCallback;

    move-result-object v1

    .line 56
    .local v1, _arg1:Lcom/motorola/android/telephony/IAtCmdServiceCallback;
    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/telephony/IAtCmdService$Stub;->registerCallback(ILcom/motorola/android/telephony/IAtCmdServiceCallback;)I

    move-result v2

    .line 57
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 63
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Lcom/motorola/android/telephony/IAtCmdServiceCallback;
    .end local v2           #_result:I
    :sswitch_2
    const-string v4, "com.motorola.android.telephony.IAtCmdService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/android/telephony/IAtCmdServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/android/telephony/IAtCmdServiceCallback;

    move-result-object v0

    .line 66
    .local v0, _arg0:Lcom/motorola/android/telephony/IAtCmdServiceCallback;
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IAtCmdService$Stub;->unRegisterCallback(Lcom/motorola/android/telephony/IAtCmdServiceCallback;)I

    move-result v2

    .line 67
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 73
    .end local v0           #_arg0:Lcom/motorola/android/telephony/IAtCmdServiceCallback;
    .end local v2           #_result:I
    :sswitch_3
    const-string v4, "com.motorola.android.telephony.IAtCmdService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IAtCmdService$Stub;->getVoiceCallService()Landroid/os/IBinder;

    move-result-object v2

    .line 75
    .local v2, _result:Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 81
    .end local v2           #_result:Landroid/os/IBinder;
    :sswitch_4
    const-string v4, "com.motorola.android.telephony.IAtCmdService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IAtCmdService$Stub;->getMMICodeService()Landroid/os/IBinder;

    move-result-object v2

    .line 83
    .restart local v2       #_result:Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 89
    .end local v2           #_result:Landroid/os/IBinder;
    :sswitch_5
    const-string v4, "com.motorola.android.telephony.IAtCmdService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IAtCmdService$Stub;->getSimCardService()Landroid/os/IBinder;

    move-result-object v2

    .line 91
    .restart local v2       #_result:Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 97
    .end local v2           #_result:Landroid/os/IBinder;
    :sswitch_6
    const-string v4, "com.motorola.android.telephony.IAtCmdService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IAtCmdService$Stub;->getSMSExtSerivce()Landroid/os/IBinder;

    move-result-object v2

    .line 99
    .restart local v2       #_result:Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 105
    .end local v2           #_result:Landroid/os/IBinder;
    :sswitch_7
    const-string v4, "com.motorola.android.telephony.IAtCmdService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IAtCmdService$Stub;->getNetworkService()Landroid/os/IBinder;

    move-result-object v2

    .line 107
    .restart local v2       #_result:Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 113
    .end local v2           #_result:Landroid/os/IBinder;
    :sswitch_8
    const-string v4, "com.motorola.android.telephony.IAtCmdService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IAtCmdService$Stub;->getSupplementaryService()Landroid/os/IBinder;

    move-result-object v2

    .line 115
    .restart local v2       #_result:Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
