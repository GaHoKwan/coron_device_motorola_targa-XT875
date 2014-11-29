.class public Lcom/motorola/android/telephony/SmsServiceData;
.super Ljava/lang/Object;
.source "SmsServiceData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/android/telephony/SmsServiceData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bm:B

.field public mo:B

.field public mt:B

.field public serviceType:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/motorola/android/telephony/SmsServiceData$1;

    invoke-direct {v0}, Lcom/motorola/android/telephony/SmsServiceData$1;-><init>()V

    sput-object v0, Lcom/motorola/android/telephony/SmsServiceData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(BBBB)V
    .locals 0
    .parameter "serviceType"
    .parameter "mo"
    .parameter "mt"
    .parameter "bm"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-byte p1, p0, Lcom/motorola/android/telephony/SmsServiceData;->serviceType:B

    .line 59
    iput-byte p2, p0, Lcom/motorola/android/telephony/SmsServiceData;->mo:B

    .line 60
    iput-byte p3, p0, Lcom/motorola/android/telephony/SmsServiceData;->mt:B

    .line 61
    iput-byte p4, p0, Lcom/motorola/android/telephony/SmsServiceData;->bm:B

    .line 62
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public getBm()B
    .locals 1

    .prologue
    .line 77
    iget-byte v0, p0, Lcom/motorola/android/telephony/SmsServiceData;->bm:B

    return v0
.end method

.method public getMo()B
    .locals 1

    .prologue
    .line 69
    iget-byte v0, p0, Lcom/motorola/android/telephony/SmsServiceData;->mo:B

    return v0
.end method

.method public getMt()B
    .locals 1

    .prologue
    .line 73
    iget-byte v0, p0, Lcom/motorola/android/telephony/SmsServiceData;->mt:B

    return v0
.end method

.method public getServiceType()B
    .locals 1

    .prologue
    .line 65
    iget-byte v0, p0, Lcom/motorola/android/telephony/SmsServiceData;->serviceType:B

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 85
    iget-byte v0, p0, Lcom/motorola/android/telephony/SmsServiceData;->serviceType:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 86
    iget-byte v0, p0, Lcom/motorola/android/telephony/SmsServiceData;->mo:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 87
    iget-byte v0, p0, Lcom/motorola/android/telephony/SmsServiceData;->mt:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 88
    iget-byte v0, p0, Lcom/motorola/android/telephony/SmsServiceData;->bm:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 89
    return-void
.end method
