.class final Lcom/motorola/android/telephony/AkaAuthResult$1;
.super Ljava/lang/Object;
.source "AkaAuthResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/AkaAuthResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/motorola/android/telephony/AkaAuthResult;
    .locals 8
    .parameter "source"

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/telephony/AkaAuthResult$Status;->valueOf(Ljava/lang/String;)Lcom/motorola/android/telephony/AkaAuthResult$Status;

    move-result-object v1

    .line 44
    .local v1, status:Lcom/motorola/android/telephony/AkaAuthResult$Status;
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 45
    .local v2, failureCause:B
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 46
    .local v3, ck:[B
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 47
    .local v4, ik:[B
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 48
    .local v5, kc:[B
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 49
    .local v6, res:[B
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 51
    .local v7, auts:[B
    new-instance v0, Lcom/motorola/android/telephony/AkaAuthResult;

    invoke-direct/range {v0 .. v7}, Lcom/motorola/android/telephony/AkaAuthResult;-><init>(Lcom/motorola/android/telephony/AkaAuthResult$Status;B[B[B[B[B[B)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/motorola/android/telephony/AkaAuthResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/motorola/android/telephony/AkaAuthResult;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/motorola/android/telephony/AkaAuthResult;
    .locals 1
    .parameter "size"

    .prologue
    .line 55
    new-array v0, p1, [Lcom/motorola/android/telephony/AkaAuthResult;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/motorola/android/telephony/AkaAuthResult$1;->newArray(I)[Lcom/motorola/android/telephony/AkaAuthResult;

    move-result-object v0

    return-object v0
.end method
