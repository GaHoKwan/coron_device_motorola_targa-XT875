.class public Lcom/motorola/android/telephony/AkaAuthResult;
.super Ljava/lang/Object;
.source "AkaAuthResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/telephony/AkaAuthResult$Status;
    }
.end annotation


# static fields
.field public static final AUTH_ERROR_GSM_CNTXT_NOT_SUP:I = 0x2

.field public static final AUTH_ERROR_INCORRECT_MAC:I = 0x3

.field public static final AUTH_FAIL:I = 0x1

.field public static final AUTH_SUCCESS:I = 0x0

.field public static final AUTS_FAIL:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/android/telephony/AkaAuthResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final GENERIC_AUTH_FAILURE:I = 0x5

.field private static final zeroBytes:[B


# instance fields
.field private final mAuts:[B

.field private final mCk:[B

.field private final mFailureCause:B

.field private final mIk:[B

.field private final mKc:[B

.field private final mRes:[B

.field private final mStatus:Lcom/motorola/android/telephony/AkaAuthResult$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/android/telephony/AkaAuthResult;->zeroBytes:[B

    .line 40
    new-instance v0, Lcom/motorola/android/telephony/AkaAuthResult$1;

    invoke-direct {v0}, Lcom/motorola/android/telephony/AkaAuthResult$1;-><init>()V

    sput-object v0, Lcom/motorola/android/telephony/AkaAuthResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .line 38
    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/motorola/android/telephony/AkaAuthResult$Status;)V
    .locals 3
    .parameter "status"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, Lcom/motorola/android/telephony/AkaAuthResult$Status;->FAILURE:Lcom/motorola/android/telephony/AkaAuthResult$Status;

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1, v2}, Lcom/motorola/android/telephony/AkaAuthResult;->statusHasParameters(Lcom/motorola/android/telephony/AkaAuthResult$Status;B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parameters required for status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    iput-object p1, p0, Lcom/motorola/android/telephony/AkaAuthResult;->mStatus:Lcom/motorola/android/telephony/AkaAuthResult$Status;

    .line 72
    iput-byte v2, p0, Lcom/motorola/android/telephony/AkaAuthResult;->mFailureCause:B

    .line 73
    iput-object v1, p0, Lcom/motorola/android/telephony/AkaAuthResult;->mCk:[B

    .line 74
    iput-object v1, p0, Lcom/motorola/android/telephony/AkaAuthResult;->mIk:[B

    .line 75
    iput-object v1, p0, Lcom/motorola/android/telephony/AkaAuthResult;->mKc:[B

    .line 76
    iput-object v1, p0, Lcom/motorola/android/telephony/AkaAuthResult;->mRes:[B

    .line 77
    iput-object v1, p0, Lcom/motorola/android/telephony/AkaAuthResult;->mAuts:[B

    .line 78
    return-void
.end method

.method public constructor <init>(Lcom/motorola/android/telephony/AkaAuthResult$Status;B[B[B[B[B[B)V
    .locals 3
    .parameter "status"
    .parameter "failureCause"
    .parameter "ck"
    .parameter "ik"
    .parameter "kc"
    .parameter "res"
    .parameter "auts"

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/motorola/android/telephony/AkaAuthResult;->statusHasParameters(Lcom/motorola/android/telephony/AkaAuthResult$Status;B)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    if-nez p5, :cond_0

    if-nez p6, :cond_0

    if-eqz p7, :cond_1

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parameters invalid for status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", failureCause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_1
    iput-object p1, p0, Lcom/motorola/android/telephony/AkaAuthResult;->mStatus:Lcom/motorola/android/telephony/AkaAuthResult$Status;

    .line 90
    iput-byte p2, p0, Lcom/motorola/android/telephony/AkaAuthResult;->mFailureCause:B

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/motorola/android/telephony/AkaAuthResult;->statusHasParameters(Lcom/motorola/android/telephony/AkaAuthResult$Status;B)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 92
    if-eqz p3, :cond_2

    .line 93
    invoke-virtual {p3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/motorola/android/telephony/AkaAuthResult;->mCk:[B

    .line 97
    :goto_0
    if-eqz p4, :cond_3

    .line 98
    invoke-virtual {p4}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/motorola/android/telephony/AkaAuthResult;->mIk:[B

    .line 102
    :goto_1
    if-eqz p5, :cond_4

    .line 103
    invoke-virtual {p5}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/motorola/android/telephony/AkaAuthResult;->mKc:[B

    .line 107
    :goto_2
    if-eqz p6, :cond_5

    .line 108
    invoke-virtual {p6}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/motorola/android/telephony/AkaAuthResult;->mRes:[B

    .line 112
    :goto_3
    if-eqz p7, :cond_6

    .line 113
    invoke-virtual {p7}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/motorola/android/telephony/AkaAuthResult;->mAuts:[B

    .line 124
    :goto_4
    return-void

    .line 95
    :cond_2
    sget-object v0, Lcom/motorola/android/telephony/AkaAuthResult;->zeroBytes:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/motorola/android/telephony/AkaAuthResult;->mCk:[B

    goto :goto_0

    .line 100
    :cond_3
    sget-object v0, Lcom/motorola/android/telephony/AkaAuthResult;->zeroBytes:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/motorola/android/telephony/AkaAuthResult;->mIk:[B

    goto :goto_1

    .line 105
    :cond_4
    sget-object v0, Lcom/motorola/android/telephony/AkaAuthResult;->zeroBytes:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/motorola/android/telephony/AkaAuthResult;->mKc:[B

    goto :goto_2

    .line 110
    :cond_5
    sget-object v0, Lcom/motorola/android/telephony/AkaAuthResult;->zeroBytes:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/motorola/android/telephony/AkaAuthResult;->mRes:[B

    goto :goto_3

    .line 115
    :cond_6
    sget-object v0, Lcom/motorola/android/telephony/AkaAuthResult;->zeroBytes:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/motorola/android/telephony/AkaAuthResult;->mAuts:[B

    goto :goto_4

    .line 118
    :cond_7
    iput-object v1, p0, Lcom/motorola/android/telephony/AkaAuthResult;->mCk:[B

    .line 119
    iput-object v1, p0, Lcom/motorola/android/telephony/AkaAuthResult;->mIk:[B

    .line 120
    iput-object v1, p0, Lcom/motorola/android/telephony/AkaAuthResult;->mKc:[B

    .line 121
    iput-object v1, p0, Lcom/motorola/android/telephony/AkaAuthResult;->mRes:[B

    .line 122
    iput-object v1, p0, Lcom/motorola/android/telephony/AkaAuthResult;->mAuts:[B

    goto :goto_4
.end method

.method private dumpBytes(Ljava/lang/StringBuilder;[B)V
    .locals 6
    .parameter "sb"
    .parameter "bytes"

    .prologue
    .line 169
    if-eqz p2, :cond_0

    .line 170
    move-object v0, p2

    .local v0, arr$:[B
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-byte v1, v0, v2

    .line 171
    .local v1, b:B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit16 v5, v1, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    .end local v0           #arr$:[B
    .end local v1           #b:B
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    const-string v4, "null "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    :cond_1
    return-void
.end method

.method private statusHasParameters(Lcom/motorola/android/telephony/AkaAuthResult$Status;B)Z
    .locals 1
    .parameter "status"
    .parameter "failureCause"

    .prologue
    .line 63
    sget-object v0, Lcom/motorola/android/telephony/AkaAuthResult$Status;->SUCCESS:Lcom/motorola/android/telephony/AkaAuthResult$Status;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public getAuts()[B
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/motorola/android/telephony/AkaAuthResult;->mAuts:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getCk()[B
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/motorola/android/telephony/AkaAuthResult;->mCk:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getFailureCause()B
    .locals 1

    .prologue
    .line 131
    iget-byte v0, p0, Lcom/motorola/android/telephony/AkaAuthResult;->mFailureCause:B

    return v0
.end method

.method public getIk()[B
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/motorola/android/telephony/AkaAuthResult;->mIk:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getKc()[B
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/motorola/android/telephony/AkaAuthResult;->mKc:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getRes()[B
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/motorola/android/telephony/AkaAuthResult;->mRes:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getStatus()Lcom/motorola/android/telephony/AkaAuthResult$Status;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/motorola/android/telephony/AkaAuthResult;->mStatus:Lcom/motorola/android/telephony/AkaAuthResult$Status;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .local v0, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ( status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/telephony/AkaAuthResult;->mStatus:Lcom/motorola/android/telephony/AkaAuthResult$Status;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", cause=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/motorola/android/telephony/AkaAuthResult;->mFailureCause:B

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v1, ", ck="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget-object v1, p0, Lcom/motorola/android/telephony/AkaAuthResult;->mCk:[B

    invoke-direct {p0, v0, v1}, Lcom/motorola/android/telephony/AkaAuthResult;->dumpBytes(Ljava/lang/StringBuilder;[B)V

    .line 185
    const-string v1, ", ik="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    iget-object v1, p0, Lcom/motorola/android/telephony/AkaAuthResult;->mIk:[B

    invoke-direct {p0, v0, v1}, Lcom/motorola/android/telephony/AkaAuthResult;->dumpBytes(Ljava/lang/StringBuilder;[B)V

    .line 187
    const-string v1, ", kc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    iget-object v1, p0, Lcom/motorola/android/telephony/AkaAuthResult;->mKc:[B

    invoke-direct {p0, v0, v1}, Lcom/motorola/android/telephony/AkaAuthResult;->dumpBytes(Ljava/lang/StringBuilder;[B)V

    .line 189
    const-string v1, ", res="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    iget-object v1, p0, Lcom/motorola/android/telephony/AkaAuthResult;->mRes:[B

    invoke-direct {p0, v0, v1}, Lcom/motorola/android/telephony/AkaAuthResult;->dumpBytes(Ljava/lang/StringBuilder;[B)V

    .line 191
    const-string v1, ", auts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    iget-object v1, p0, Lcom/motorola/android/telephony/AkaAuthResult;->mAuts:[B

    invoke-direct {p0, v0, v1}, Lcom/motorola/android/telephony/AkaAuthResult;->dumpBytes(Ljava/lang/StringBuilder;[B)V

    .line 193
    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/motorola/android/telephony/AkaAuthResult;->mStatus:Lcom/motorola/android/telephony/AkaAuthResult$Status;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-byte v0, p0, Lcom/motorola/android/telephony/AkaAuthResult;->mFailureCause:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 161
    iget-object v0, p0, Lcom/motorola/android/telephony/AkaAuthResult;->mCk:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 162
    iget-object v0, p0, Lcom/motorola/android/telephony/AkaAuthResult;->mIk:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 163
    iget-object v0, p0, Lcom/motorola/android/telephony/AkaAuthResult;->mKc:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 164
    iget-object v0, p0, Lcom/motorola/android/telephony/AkaAuthResult;->mRes:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 165
    iget-object v0, p0, Lcom/motorola/android/telephony/AkaAuthResult;->mAuts:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 166
    return-void
.end method
