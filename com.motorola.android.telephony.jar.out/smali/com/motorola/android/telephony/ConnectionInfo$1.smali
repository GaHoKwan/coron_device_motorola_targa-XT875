.class final Lcom/motorola/android/telephony/ConnectionInfo$1;
.super Ljava/lang/Object;
.source "ConnectionInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/ConnectionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/motorola/android/telephony/ConnectionInfo;
    .locals 1
    .parameter "in"

    .prologue
    .line 89
    new-instance v0, Lcom/motorola/android/telephony/ConnectionInfo;

    invoke-direct {v0, p1}, Lcom/motorola/android/telephony/ConnectionInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/motorola/android/telephony/ConnectionInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/motorola/android/telephony/ConnectionInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/motorola/android/telephony/ConnectionInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 93
    new-array v0, p1, [Lcom/motorola/android/telephony/ConnectionInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/motorola/android/telephony/ConnectionInfo$1;->newArray(I)[Lcom/motorola/android/telephony/ConnectionInfo;

    move-result-object v0

    return-object v0
.end method
