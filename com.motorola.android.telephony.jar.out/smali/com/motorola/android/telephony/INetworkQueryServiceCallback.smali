.class public interface abstract Lcom/motorola/android/telephony/INetworkQueryServiceCallback;
.super Ljava/lang/Object;
.source "INetworkQueryServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/telephony/INetworkQueryServiceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onQueryComplete(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/android/telephony/NetworkInfoExt;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
