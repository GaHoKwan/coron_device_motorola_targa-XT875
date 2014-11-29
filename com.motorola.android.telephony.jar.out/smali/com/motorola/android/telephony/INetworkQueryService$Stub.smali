.class public abstract Lcom/motorola/android/telephony/INetworkQueryService$Stub;
.super Landroid/os/Binder;
.source "INetworkQueryService.java"

# interfaces
.implements Lcom/motorola/android/telephony/INetworkQueryService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/INetworkQueryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/telephony/INetworkQueryService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.android.telephony.INetworkQueryService"

.field static final TRANSACTION_startNetworkQuery:I = 0x1

.field static final TRANSACTION_stopNetworkQuery:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.motorola.android.telephony.INetworkQueryService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/android/telephony/INetworkQueryService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const-string v1, "com.motorola.android.telephony.INetworkQueryService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/motorola/android/telephony/INetworkQueryService;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcom/motorola/android/telephony/INetworkQueryService;

    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Lcom/motorola/android/telephony/INetworkQueryService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/motorola/android/telephony/INetworkQueryService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
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
    const/4 v1, 0x1

    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 69
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 49
    :sswitch_0
    const-string v2, "com.motorola.android.telephony.INetworkQueryService"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :sswitch_1
    const-string v2, "com.motorola.android.telephony.INetworkQueryService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/android/telephony/INetworkQueryServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/android/telephony/INetworkQueryServiceCallback;

    move-result-object v0

    .line 57
    .local v0, _arg0:Lcom/motorola/android/telephony/INetworkQueryServiceCallback;
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/INetworkQueryService$Stub;->startNetworkQuery(Lcom/motorola/android/telephony/INetworkQueryServiceCallback;)V

    goto :goto_0

    .line 62
    .end local v0           #_arg0:Lcom/motorola/android/telephony/INetworkQueryServiceCallback;
    :sswitch_2
    const-string v2, "com.motorola.android.telephony.INetworkQueryService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/android/telephony/INetworkQueryServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/android/telephony/INetworkQueryServiceCallback;

    move-result-object v0

    .line 65
    .restart local v0       #_arg0:Lcom/motorola/android/telephony/INetworkQueryServiceCallback;
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/INetworkQueryService$Stub;->stopNetworkQuery(Lcom/motorola/android/telephony/INetworkQueryServiceCallback;)V

    goto :goto_0

    .line 45
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
