.class public Lcom/motorola/android/telephony/GsmAuthResult;
.super Ljava/lang/Object;
.source "GsmAuthResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/telephony/GsmAuthResult$Status;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/android/telephony/GsmAuthResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final KC_LEN:I = 0x8

.field public static final SRES_LEN:I = 0x4

.field private static final zeroBytes:[B


# instance fields
.field private final mKc:[B

.field private final mSres:[B

.field private final mStatus:Lcom/motorola/android/telephony/GsmAuthResult$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/android/telephony/GsmAuthResult;->zeroBytes:[B

    .line 31
    new-instance v0, Lcom/motorola/android/telephony/GsmAuthResult$1;

    invoke-direct {v0}, Lcom/motorola/android/telephony/GsmAuthResult$1;-><init>()V

    sput-object v0, Lcom/motorola/android/telephony/GsmAuthResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .line 28
    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/motorola/android/telephony/GsmAuthResult$Status;)V
    .locals 2
    .parameter "status"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v0, Lcom/motorola/android/telephony/GsmAuthResult$Status;->SUCCESS:Lcom/motorola/android/telephony/GsmAuthResult$Status;

    if-ne p1, v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "for SUCCESS, sres and kc must be specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    sget-object v0, Lcom/motorola/android/telephony/GsmAuthResult;->zeroBytes:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/motorola/android/telephony/GsmAuthResult;->mSres:[B

    .line 53
    sget-object v0, Lcom/motorola/android/telephony/GsmAuthResult;->zeroBytes:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/motorola/android/telephony/GsmAuthResult;->mKc:[B

    .line 54
    iput-object p1, p0, Lcom/motorola/android/telephony/GsmAuthResult;->mStatus:Lcom/motorola/android/telephony/GsmAuthResult$Status;

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/motorola/android/telephony/GsmAuthResult$Status;[B[B)V
    .locals 2
    .parameter "status"
    .parameter "sres"
    .parameter "kc"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-object v0, Lcom/motorola/android/telephony/GsmAuthResult$Status;->SUCCESS:Lcom/motorola/android/telephony/GsmAuthResult$Status;

    if-ne p1, v0, :cond_2

    .line 63
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 64
    array-length v0, p2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    array-length v0, p3

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 65
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/motorola/android/telephony/GsmAuthResult;->mSres:[B

    .line 66
    invoke-virtual {p3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/motorola/android/telephony/GsmAuthResult;->mKc:[B

    .line 82
    :goto_0
    iput-object p1, p0, Lcom/motorola/android/telephony/GsmAuthResult;->mStatus:Lcom/motorola/android/telephony/GsmAuthResult$Status;

    .line 83
    return-void

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sres or kc length incorrect"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    sget-object v0, Lcom/motorola/android/telephony/GsmAuthResult;->zeroBytes:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/motorola/android/telephony/GsmAuthResult;->mSres:[B

    .line 74
    sget-object v0, Lcom/motorola/android/telephony/GsmAuthResult;->zeroBytes:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/motorola/android/telephony/GsmAuthResult;->mKc:[B

    goto :goto_0

    .line 78
    :cond_2
    sget-object v0, Lcom/motorola/android/telephony/GsmAuthResult;->zeroBytes:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/motorola/android/telephony/GsmAuthResult;->mSres:[B

    .line 79
    sget-object v0, Lcom/motorola/android/telephony/GsmAuthResult;->zeroBytes:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/motorola/android/telephony/GsmAuthResult;->mKc:[B

    goto :goto_0
.end method

.method public constructor <init>([B[B)V
    .locals 1
    .parameter "sres"
    .parameter "kc"

    .prologue
    .line 58
    sget-object v0, Lcom/motorola/android/telephony/GsmAuthResult$Status;->SUCCESS:Lcom/motorola/android/telephony/GsmAuthResult$Status;

    invoke-direct {p0, v0, p1, p2}, Lcom/motorola/android/telephony/GsmAuthResult;-><init>(Lcom/motorola/android/telephony/GsmAuthResult$Status;[B[B)V

    .line 59
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public getKc()[B
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/motorola/android/telephony/GsmAuthResult;->mKc:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getSres()[B
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/motorola/android/telephony/GsmAuthResult;->mSres:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getStatus()Lcom/motorola/android/telephony/GsmAuthResult$Status;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/motorola/android/telephony/GsmAuthResult;->mStatus:Lcom/motorola/android/telephony/GsmAuthResult$Status;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .local v4, sb:Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ( sres="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-object v0, p0, Lcom/motorola/android/telephony/GsmAuthResult;->mSres:[B

    .local v0, arr$:[B
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .line 111
    .local v1, b:B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    and-int/lit16 v6, v1, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    .end local v1           #b:B
    :cond_0
    const-string v5, ", kc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-object v0, p0, Lcom/motorola/android/telephony/GsmAuthResult;->mKc:[B

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-byte v1, v0, v2

    .line 115
    .restart local v1       #b:B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    and-int/lit16 v6, v1, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 117
    .end local v1           #b:B
    :cond_1
    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/motorola/android/telephony/GsmAuthResult;->mStatus:Lcom/motorola/android/telephony/GsmAuthResult$Status;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/motorola/android/telephony/GsmAuthResult;->mSres:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 104
    iget-object v0, p0, Lcom/motorola/android/telephony/GsmAuthResult;->mKc:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 105
    return-void
.end method
