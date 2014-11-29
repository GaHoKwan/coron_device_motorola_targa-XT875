.class public abstract Lcom/motorola/android/telephony/ISupplementaryService$Stub;
.super Landroid/os/Binder;
.source "ISupplementaryService.java"

# interfaces
.implements Lcom/motorola/android/telephony/ISupplementaryService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/ISupplementaryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/telephony/ISupplementaryService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.android.telephony.ISupplementaryService"

.field static final TRANSACTION_changeFacilityLockPIN:I = 0x3

.field static final TRANSACTION_queryCallForward:I = 0x9

.field static final TRANSACTION_queryCallWaiting:I = 0x5

.field static final TRANSACTION_queryFacilityLock:I = 0x2

.field static final TRANSACTION_queryLineIdentification:I = 0x7

.field static final TRANSACTION_setCallForward:I = 0x8

.field static final TRANSACTION_setCallWaiting:I = 0x4

.field static final TRANSACTION_setFacilityLock:I = 0x1

.field static final TRANSACTION_setLineIdentification:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.motorola.android.telephony.ISupplementaryService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/android/telephony/ISupplementaryService;
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
    const-string v1, "com.motorola.android.telephony.ISupplementaryService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/motorola/android/telephony/ISupplementaryService;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/motorola/android/telephony/ISupplementaryService;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/motorola/android/telephony/ISupplementaryService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/motorola/android/telephony/ISupplementaryService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 7
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
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 161
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 46
    :sswitch_0
    const-string v6, "com.motorola.android.telephony.ISupplementaryService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v6, "com.motorola.android.telephony.ISupplementaryService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    move v1, v5

    .line 57
    .local v1, _arg1:Z
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 60
    .local v3, _arg3:I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/motorola/android/telephony/ISupplementaryService$Stub;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;I)I

    move-result v4

    .line 61
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 67
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Z
    .end local v2           #_arg2:Ljava/lang/String;
    .end local v3           #_arg3:I
    .end local v4           #_result:I
    :sswitch_2
    const-string v6, "com.motorola.android.telephony.ISupplementaryService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 74
    .local v2, _arg2:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/android/telephony/ISupplementaryService$Stub;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 75
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 81
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:I
    .end local v4           #_result:I
    :sswitch_3
    const-string v6, "com.motorola.android.telephony.ISupplementaryService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 87
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/android/telephony/ISupplementaryService$Stub;->changeFacilityLockPIN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 89
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 95
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Ljava/lang/String;
    .end local v4           #_result:I
    :sswitch_4
    const-string v6, "com.motorola.android.telephony.ISupplementaryService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    move v0, v5

    .line 98
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/ISupplementaryService$Stub;->setCallWaiting(Z)I

    move-result v4

    .line 99
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:I
    :cond_1
    move v0, v1

    .line 97
    goto :goto_1

    .line 105
    :sswitch_5
    const-string v6, "com.motorola.android.telephony.ISupplementaryService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/motorola/android/telephony/ISupplementaryService$Stub;->queryCallWaiting()I

    move-result v4

    .line 107
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 113
    .end local v4           #_result:I
    :sswitch_6
    const-string v6, "com.motorola.android.telephony.ISupplementaryService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 117
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 118
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/telephony/ISupplementaryService$Stub;->setLineIdentification(II)I

    move-result v4

    .line 119
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 125
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v4           #_result:I
    :sswitch_7
    const-string v6, "com.motorola.android.telephony.ISupplementaryService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 128
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/ISupplementaryService$Stub;->queryLineIdentification(I)I

    move-result v4

    .line 129
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 135
    .end local v0           #_arg0:I
    .end local v4           #_result:I
    :sswitch_8
    const-string v6, "com.motorola.android.telephony.ISupplementaryService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 139
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    .line 140
    sget-object v6, Lcom/motorola/android/telephony/CallForwardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/android/telephony/CallForwardInfo;

    .line 145
    .local v1, _arg1:Lcom/motorola/android/telephony/CallForwardInfo;
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/telephony/ISupplementaryService$Stub;->setCallForward(ILcom/motorola/android/telephony/CallForwardInfo;)I

    move-result v4

    .line 146
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 143
    .end local v1           #_arg1:Lcom/motorola/android/telephony/CallForwardInfo;
    .end local v4           #_result:I
    :cond_2
    const/4 v1, 0x0

    .restart local v1       #_arg1:Lcom/motorola/android/telephony/CallForwardInfo;
    goto :goto_2

    .line 152
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Lcom/motorola/android/telephony/CallForwardInfo;
    :sswitch_9
    const-string v6, "com.motorola.android.telephony.ISupplementaryService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 155
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/ISupplementaryService$Stub;->queryCallForward(I)I

    move-result v4

    .line 156
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
