.class final Lcom/motorola/android/telephony/SmsServiceData$1;
.super Ljava/lang/Object;
.source "SmsServiceData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/SmsServiceData;
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
        "Lcom/motorola/android/telephony/SmsServiceData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/motorola/android/telephony/SmsServiceData;
    .locals 5
    .parameter "source"

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 44
    .local v3, serviceType:B
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 45
    .local v1, mo:B
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 46
    .local v2, mt:B
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 48
    .local v0, bm:B
    new-instance v4, Lcom/motorola/android/telephony/SmsServiceData;

    invoke-direct {v4, v3, v1, v2, v0}, Lcom/motorola/android/telephony/SmsServiceData;-><init>(BBBB)V

    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/motorola/android/telephony/SmsServiceData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/motorola/android/telephony/SmsServiceData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/motorola/android/telephony/SmsServiceData;
    .locals 1
    .parameter "size"

    .prologue
    .line 52
    new-array v0, p1, [Lcom/motorola/android/telephony/SmsServiceData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/motorola/android/telephony/SmsServiceData$1;->newArray(I)[Lcom/motorola/android/telephony/SmsServiceData;

    move-result-object v0

    return-object v0
.end method
