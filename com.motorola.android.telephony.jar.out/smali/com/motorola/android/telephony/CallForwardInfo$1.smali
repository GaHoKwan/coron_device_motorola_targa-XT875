.class final Lcom/motorola/android/telephony/CallForwardInfo$1;
.super Ljava/lang/Object;
.source "CallForwardInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/CallForwardInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/motorola/android/telephony/CallForwardInfo;
    .locals 1
    .parameter "in"

    .prologue
    .line 58
    new-instance v0, Lcom/motorola/android/telephony/CallForwardInfo;

    invoke-direct {v0, p1}, Lcom/motorola/android/telephony/CallForwardInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/motorola/android/telephony/CallForwardInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/motorola/android/telephony/CallForwardInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/motorola/android/telephony/CallForwardInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 62
    new-array v0, p1, [Lcom/motorola/android/telephony/CallForwardInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/motorola/android/telephony/CallForwardInfo$1;->newArray(I)[Lcom/motorola/android/telephony/CallForwardInfo;

    move-result-object v0

    return-object v0
.end method
