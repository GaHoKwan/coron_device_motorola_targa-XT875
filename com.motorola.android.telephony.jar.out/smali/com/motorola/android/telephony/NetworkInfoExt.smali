.class public Lcom/motorola/android/telephony/NetworkInfoExt;
.super Ljava/lang/Object;
.source "NetworkInfoExt.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/telephony/NetworkInfoExt$State;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/android/telephony/NetworkInfoExt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field operatorAlphaLong:Ljava/lang/String;

.field operatorAlphaShort:Ljava/lang/String;

.field operatorNumeric:Ljava/lang/String;

.field state:Lcom/motorola/android/telephony/NetworkInfoExt$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lcom/motorola/android/telephony/NetworkInfoExt$1;

    invoke-direct {v0}, Lcom/motorola/android/telephony/NetworkInfoExt$1;-><init>()V

    sput-object v0, Lcom/motorola/android/telephony/NetworkInfoExt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/telephony/NetworkInfoExt$State;)V
    .locals 1
    .parameter "operatorAlphaLong"
    .parameter "operatorAlphaShort"
    .parameter "operatorNumeric"
    .parameter "state"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/motorola/android/telephony/NetworkInfoExt$State;->UNKNOWN:Lcom/motorola/android/telephony/NetworkInfoExt$State;

    iput-object v0, p0, Lcom/motorola/android/telephony/NetworkInfoExt;->state:Lcom/motorola/android/telephony/NetworkInfoExt$State;

    .line 65
    iput-object p1, p0, Lcom/motorola/android/telephony/NetworkInfoExt;->operatorAlphaLong:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/motorola/android/telephony/NetworkInfoExt;->operatorAlphaShort:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcom/motorola/android/telephony/NetworkInfoExt;->operatorNumeric:Ljava/lang/String;

    .line 69
    iput-object p4, p0, Lcom/motorola/android/telephony/NetworkInfoExt;->state:Lcom/motorola/android/telephony/NetworkInfoExt$State;

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "operatorAlphaLong"
    .parameter "operatorAlphaShort"
    .parameter "operatorNumeric"
    .parameter "stateString"

    .prologue
    .line 77
    invoke-static {p4}, Lcom/motorola/android/telephony/NetworkInfoExt;->rilStateToState(Ljava/lang/String;)Lcom/motorola/android/telephony/NetworkInfoExt$State;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/motorola/android/telephony/NetworkInfoExt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/telephony/NetworkInfoExt$State;)V

    .line 79
    return-void
.end method

.method private static rilStateToState(Ljava/lang/String;)Lcom/motorola/android/telephony/NetworkInfoExt$State;
    .locals 3
    .parameter "s"

    .prologue
    .line 85
    const-string v0, "unknown"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 86
    sget-object v0, Lcom/motorola/android/telephony/NetworkInfoExt$State;->UNKNOWN:Lcom/motorola/android/telephony/NetworkInfoExt$State;

    .line 92
    :goto_0
    return-object v0

    .line 87
    :cond_0
    const-string v0, "available"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 88
    sget-object v0, Lcom/motorola/android/telephony/NetworkInfoExt$State;->AVAILABLE:Lcom/motorola/android/telephony/NetworkInfoExt$State;

    goto :goto_0

    .line 89
    :cond_1
    const-string v0, "current"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 90
    sget-object v0, Lcom/motorola/android/telephony/NetworkInfoExt$State;->CURRENT:Lcom/motorola/android/telephony/NetworkInfoExt$State;

    goto :goto_0

    .line 91
    :cond_2
    const-string v0, "forbidden"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 92
    sget-object v0, Lcom/motorola/android/telephony/NetworkInfoExt$State;->FORBIDDEN:Lcom/motorola/android/telephony/NetworkInfoExt$State;

    goto :goto_0

    .line 94
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RIL impl error: Invalid network state \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public getOperatorAlphaLong()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/motorola/android/telephony/NetworkInfoExt;->operatorAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorAlphaShort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/motorola/android/telephony/NetworkInfoExt;->operatorAlphaShort:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/motorola/android/telephony/NetworkInfoExt;->operatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/motorola/android/telephony/NetworkInfoExt$State;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/motorola/android/telephony/NetworkInfoExt;->state:Lcom/motorola/android/telephony/NetworkInfoExt$State;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkInfoExt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/telephony/NetworkInfoExt;->operatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/telephony/NetworkInfoExt;->operatorAlphaShort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/telephony/NetworkInfoExt;->operatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/telephony/NetworkInfoExt;->state:Lcom/motorola/android/telephony/NetworkInfoExt$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/motorola/android/telephony/NetworkInfoExt;->operatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/motorola/android/telephony/NetworkInfoExt;->operatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/motorola/android/telephony/NetworkInfoExt;->operatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/motorola/android/telephony/NetworkInfoExt;->state:Lcom/motorola/android/telephony/NetworkInfoExt$State;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 128
    return-void
.end method
