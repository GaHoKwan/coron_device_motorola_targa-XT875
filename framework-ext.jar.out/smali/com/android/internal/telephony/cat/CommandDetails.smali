.class Lcom/android/internal/telephony/cat/CommandDetails;
.super Lcom/android/internal/telephony/cat/ValueObject;
.source "CommandDetails.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public commandNumber:I

.field public commandQualifier:I

.field public compRequired:Z

.field public typeOfCommand:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/android/internal/telephony/cat/CommandDetails$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/CommandDetails$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/CommandDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ValueObject;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v1, 0x1

    .line 50
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ValueObject;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 56
    .local v0, temp:I
    if-ne v0, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    .line 63
    return-void

    .line 56
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/android/internal/telephony/cat/CommandDetails;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    iget-boolean v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public getTag()Lcom/android/internal/telephony/cat/ComprehensionTlvTag;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CmdDetails: compRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " commandNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " typeOfCommand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " commandQualifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v0, 0x1

    .line 69
    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    if-ne v1, v0, :cond_0

    .line 70
    .local v0, temp:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget v1, p0, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget v1, p0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget v1, p0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    return-void

    .line 69
    .end local v0           #temp:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
