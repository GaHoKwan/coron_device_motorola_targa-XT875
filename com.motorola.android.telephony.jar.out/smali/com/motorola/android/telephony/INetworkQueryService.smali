.class public interface abstract Lcom/motorola/android/telephony/INetworkQueryService;
.super Ljava/lang/Object;
.source "INetworkQueryService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/telephony/INetworkQueryService$Stub;
    }
.end annotation


# virtual methods
.method public abstract startNetworkQuery(Lcom/motorola/android/telephony/INetworkQueryServiceCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopNetworkQuery(Lcom/motorola/android/telephony/INetworkQueryServiceCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
