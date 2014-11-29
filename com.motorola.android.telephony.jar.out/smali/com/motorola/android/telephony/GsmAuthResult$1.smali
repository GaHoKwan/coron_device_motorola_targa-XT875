.class final Lcom/motorola/android/telephony/GsmAuthResult$1;
.super Ljava/lang/Object;
.source "GsmAuthResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/GsmAuthResult;
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
        "Lcom/motorola/android/telephony/GsmAuthResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/motorola/android/telephony/GsmAuthResult;
    .locals 4
    .parameter "source"

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/telephony/GsmAuthResult$Status;->valueOf(Ljava/lang/String;)Lcom/motorola/android/telephony/GsmAuthResult$Status;

    move-result-object v2

    .line 35
    .local v2, status:Lcom/motorola/android/telephony/GsmAuthResult$Status;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 36
    .local v1, sres:[B
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 38
    .local v0, kc:[B
    new-instance v3, Lcom/motorola/android/telephony/GsmAuthResult;

    invoke-direct {v3, v2, v1, v0}, Lcom/motorola/android/telephony/GsmAuthResult;-><init>(Lcom/motorola/android/telephony/GsmAuthResult$Status;[B[B)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/motorola/android/telephony/GsmAuthResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/motorola/android/telephony/GsmAuthResult;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/motorola/android/telephony/GsmAuthResult;
    .locals 1
    .parameter "size"

    .prologue
    .line 42
    new-array v0, p1, [Lcom/motorola/android/telephony/GsmAuthResult;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/motorola/android/telephony/GsmAuthResult$1;->newArray(I)[Lcom/motorola/android/telephony/GsmAuthResult;

    move-result-object v0

    return-object v0
.end method
