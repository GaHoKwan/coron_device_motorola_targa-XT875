.class public Lcom/motorola/android/connectivity/MotoConnectivity;
.super Ljava/lang/Object;
.source "MotoConnectivity.java"


# static fields
.field public static final IP_TYPE_V4:I = 0x0

.field public static final IP_TYPE_V6:I = 0x1

.field public static final IP_TYPE_V6V4:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MotoConnectivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllByName2(Ljava/lang/String;Z)[Ljava/net/InetAddress;
    .locals 1
    .parameter "host"
    .parameter "isipv6"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-static {p0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static getMobileDataEnabled(Landroid/net/ConnectivityManager;)Z
    .locals 2
    .parameter "cm"

    .prologue
    .line 42
    if-nez p0, :cond_0

    .line 43
    const-string v0, "MotoConnectivity"

    const-string v1, "ConnectivityManager instance is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const/4 v0, 0x0

    .line 46
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public static getNetworkInfoIpVersion(Landroid/net/NetworkInfo;)I
    .locals 11
    .parameter "ni"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 96
    if-nez p0, :cond_1

    .line 97
    const-string v7, "MotoConnectivity"

    const-string v9, "NetworkInfo instance is NULL"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 121
    :cond_0
    :goto_0
    return v7

    .line 100
    :cond_1
    const-string v9, "connectivity"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v2

    .line 104
    .local v2, connMgr:Landroid/net/IConnectivityManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    invoke-interface {v2, v9}, Landroid/net/IConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 110
    .local v1, addrArray:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    const/4 v4, 0x0

    .line 111
    .local v4, haveV4:Z
    const/4 v5, 0x0

    .line 112
    .local v5, haveV6:Z
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 113
    .local v0, addr:Ljava/net/InetAddress;
    instance-of v9, v0, Ljava/net/Inet4Address;

    if-eqz v9, :cond_2

    move v4, v7

    .line 114
    :cond_2
    instance-of v9, v0, Ljava/net/Inet6Address;

    if-eqz v9, :cond_3

    move v5, v7

    :cond_3
    goto :goto_1

    .line 105
    .end local v0           #addr:Ljava/net/InetAddress;
    .end local v1           #addrArray:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v4           #haveV4:Z
    .end local v5           #haveV6:Z
    .end local v6           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v3

    .line 106
    .local v3, e:Landroid/os/RemoteException;
    const-string v7, "MotoConnectivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getLinkProperties RemoteException:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 107
    goto :goto_0

    .line 116
    .end local v3           #e:Landroid/os/RemoteException;
    .restart local v1       #addrArray:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .restart local v4       #haveV4:Z
    .restart local v5       #haveV6:Z
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_4
    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    .line 117
    const/4 v7, 0x2

    goto :goto_0

    .line 118
    :cond_5
    if-nez v5, :cond_0

    move v7, v8

    .line 121
    goto :goto_0
.end method

.method public static requestRouteToHostAddress(Landroid/net/ConnectivityManager;ILjava/net/InetAddress;I)Z
    .locals 2
    .parameter "cm"
    .parameter "networkType"
    .parameter "hostAddress"
    .parameter "mask"

    .prologue
    .line 80
    if-nez p0, :cond_0

    .line 81
    const-string v0, "MotoConnectivity"

    const-string v1, "ConnectivityManager instance is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v0, 0x0

    .line 86
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v0

    goto :goto_0
.end method

.method public static setMobileDataEnabled(Landroid/net/ConnectivityManager;Z)V
    .locals 2
    .parameter "cm"
    .parameter "enabled"

    .prologue
    .line 57
    if-nez p0, :cond_0

    .line 58
    const-string v0, "MotoConnectivity"

    const-string v1, "ConnectivityManager instance is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_0
.end method
