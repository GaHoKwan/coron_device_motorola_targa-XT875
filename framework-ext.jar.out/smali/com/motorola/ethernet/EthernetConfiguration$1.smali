.class final Lcom/motorola/ethernet/EthernetConfiguration$1;
.super Ljava/lang/Object;
.source "EthernetConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/ethernet/EthernetConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/motorola/ethernet/EthernetConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/motorola/ethernet/EthernetConfiguration;
    .locals 2
    .parameter "in"

    .prologue
    .line 98
    new-instance v0, Lcom/motorola/ethernet/EthernetConfiguration;

    invoke-direct {v0}, Lcom/motorola/ethernet/EthernetConfiguration;-><init>()V

    .line 99
    .local v0, config:Lcom/motorola/ethernet/EthernetConfiguration;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/ethernet/EthernetConfiguration$IpAssignment;->valueOf(Ljava/lang/String;)Lcom/motorola/ethernet/EthernetConfiguration$IpAssignment;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/ethernet/EthernetConfiguration;->ipAssignment:Lcom/motorola/ethernet/EthernetConfiguration$IpAssignment;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;->valueOf(Ljava/lang/String;)Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/ethernet/EthernetConfiguration;->proxySettings:Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;

    .line 101
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/LinkProperties;

    iput-object v1, v0, Lcom/motorola/ethernet/EthernetConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 102
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/motorola/ethernet/EthernetConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Lcom/motorola/ethernet/EthernetConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/motorola/ethernet/EthernetConfiguration;
    .locals 1
    .parameter "size"

    .prologue
    .line 106
    new-array v0, p1, [Lcom/motorola/ethernet/EthernetConfiguration;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/motorola/ethernet/EthernetConfiguration$1;->newArray(I)[Lcom/motorola/ethernet/EthernetConfiguration;

    move-result-object v0

    return-object v0
.end method
