.class public abstract Lcom/motorola/android/telephony/IVoiceCall$Stub;
.super Landroid/os/Binder;
.source "IVoiceCall.java"

# interfaces
.implements Lcom/motorola/android/telephony/IVoiceCall;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/IVoiceCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/telephony/IVoiceCall$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.android.telephony.IVoiceCall"

.field static final TRANSACTION_answerCall:I = 0x4

.field static final TRANSACTION_dial:I = 0x1

.field static final TRANSACTION_getCurrentConnections:I = 0x3

.field static final TRANSACTION_getMute:I = 0x6

.field static final TRANSACTION_hangup:I = 0x2

.field static final TRANSACTION_setMute:I = 0x5

.field static final TRANSACTION_startDTMF:I = 0x7

.field static final TRANSACTION_stopDTMF:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.motorola.android.telephony.IVoiceCall"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/android/telephony/IVoiceCall;
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
    const-string v1, "com.motorola.android.telephony.IVoiceCall"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/motorola/android/telephony/IVoiceCall;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/motorola/android/telephony/IVoiceCall;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/motorola/android/telephony/IVoiceCall$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/motorola/android/telephony/IVoiceCall$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 46
    :sswitch_0
    const-string v4, "com.motorola.android.telephony.IVoiceCall"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v4, "com.motorola.android.telephony.IVoiceCall"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IVoiceCall$Stub;->dial(Ljava/lang/String;)I

    move-result v1

    .line 55
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 61
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:I
    :sswitch_2
    const-string v4, "com.motorola.android.telephony.IVoiceCall"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 64
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IVoiceCall$Stub;->hangup(I)I

    move-result v1

    .line 65
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 71
    .end local v0           #_arg0:I
    .end local v1           #_result:I
    :sswitch_3
    const-string v4, "com.motorola.android.telephony.IVoiceCall"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IVoiceCall$Stub;->getCurrentConnections()Ljava/util/List;

    move-result-object v2

    .line 73
    .local v2, _result:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/android/telephony/ConnectionInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 79
    .end local v2           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/android/telephony/ConnectionInfo;>;"
    :sswitch_4
    const-string v4, "com.motorola.android.telephony.IVoiceCall"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IVoiceCall$Stub;->answerCall()I

    move-result v1

    .line 81
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 87
    .end local v1           #_result:I
    :sswitch_5
    const-string v4, "com.motorola.android.telephony.IVoiceCall"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    move v0, v3

    .line 90
    .local v0, _arg0:Z
    :cond_0
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IVoiceCall$Stub;->setMute(Z)V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 96
    .end local v0           #_arg0:Z
    :sswitch_6
    const-string v4, "com.motorola.android.telephony.IVoiceCall"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IVoiceCall$Stub;->getMute()Z

    move-result v1

    .line 98
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    if-eqz v1, :cond_1

    move v0, v3

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 104
    .end local v1           #_result:Z
    :sswitch_7
    const-string v4, "com.motorola.android.telephony.IVoiceCall"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v0, v4

    .line 107
    .local v0, _arg0:C
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IVoiceCall$Stub;->startDTMF(C)I

    move-result v1

    .line 108
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 114
    .end local v0           #_arg0:C
    .end local v1           #_result:I
    :sswitch_8
    const-string v4, "com.motorola.android.telephony.IVoiceCall"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IVoiceCall$Stub;->stopDTMF()I

    move-result v1

    .line 116
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

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
