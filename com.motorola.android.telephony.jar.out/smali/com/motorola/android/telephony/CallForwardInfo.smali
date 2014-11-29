.class public Lcom/motorola/android/telephony/CallForwardInfo;
.super Lcom/android/internal/telephony/CallForwardInfo;
.source "CallForwardInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/android/telephony/CallForwardInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/motorola/android/telephony/CallForwardInfo$1;

    invoke-direct {v0}, Lcom/motorola/android/telephony/CallForwardInfo$1;-><init>()V

    sput-object v0, Lcom/motorola/android/telephony/CallForwardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 21
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/CallForwardInfo;)V
    .locals 1
    .parameter "cf"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 24
    iget-object v0, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 25
    iget v0, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iput v0, p0, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 26
    iget v0, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    iput v0, p0, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 27
    iget v0, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    iput v0, p0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 28
    iget v0, p1, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iput v0, p0, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 29
    iget v0, p1, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    iput v0, p0, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 30
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 48
    iget v0, p0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget v0, p0, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget v0, p0, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget v0, p0, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget-object v0, p0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget v0, p0, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    return-void
.end method
