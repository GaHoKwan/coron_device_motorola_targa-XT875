.class final Lcom/motorola/android/telephony/NetworkInfoExt$1;
.super Ljava/lang/Object;
.source "NetworkInfoExt.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/NetworkInfoExt;
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
        "Lcom/motorola/android/telephony/NetworkInfoExt;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/motorola/android/telephony/NetworkInfoExt;
    .locals 5
    .parameter "in"

    .prologue
    .line 137
    new-instance v0, Lcom/motorola/android/telephony/NetworkInfoExt;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/motorola/android/telephony/NetworkInfoExt$State;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/motorola/android/telephony/NetworkInfoExt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/telephony/NetworkInfoExt$State;)V

    .line 142
    .local v0, netInfo:Lcom/motorola/android/telephony/NetworkInfoExt;
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lcom/motorola/android/telephony/NetworkInfoExt$1;->createFromParcel(Landroid/os/Parcel;)Lcom/motorola/android/telephony/NetworkInfoExt;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/motorola/android/telephony/NetworkInfoExt;
    .locals 1
    .parameter "size"

    .prologue
    .line 146
    new-array v0, p1, [Lcom/motorola/android/telephony/NetworkInfoExt;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lcom/motorola/android/telephony/NetworkInfoExt$1;->newArray(I)[Lcom/motorola/android/telephony/NetworkInfoExt;

    move-result-object v0

    return-object v0
.end method
