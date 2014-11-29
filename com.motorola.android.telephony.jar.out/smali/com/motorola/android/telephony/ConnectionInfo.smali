.class public Lcom/motorola/android/telephony/ConnectionInfo;
.super Ljava/lang/Object;
.source "ConnectionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/telephony/ConnectionInfo$2;
    }
.end annotation


# static fields
.field public static final CALL_ACTIVE:I = 0x0

.field public static final CALL_ALERTING:I = 0x3

.field public static final CALL_DIALING:I = 0x2

.field public static final CALL_DISCONNECTED:I = 0x6

.field public static final CALL_DISCONNECTING:I = 0x7

.field public static final CALL_HOLDING:I = 0x1

.field public static final CALL_INCOMING:I = 0x4

.field public static final CALL_INVALID:I = -0x1

.field public static final CALL_WAITING:I = 0x5

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/android/telephony/ConnectionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private TOA:I

.field private cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

.field private index:I

.field private isMT:Z

.field private isMpty:Z

.field private number:Ljava/lang/String;

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/motorola/android/telephony/ConnectionInfo$1;

    invoke-direct {v0}, Lcom/motorola/android/telephony/ConnectionInfo$1;-><init>()V

    sput-object v0, Lcom/motorola/android/telephony/ConnectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/android/telephony/ConnectionInfo;->index:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/motorola/android/telephony/ConnectionInfo;->isMT:Z

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/motorola/android/telephony/ConnectionInfo;->isMpty:Z

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/telephony/ConnectionInfo;->number:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/android/telephony/ConnectionInfo;->state:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/android/telephony/ConnectionInfo;->TOA:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/telephony/ConnectionInfo;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 71
    return-void

    :cond_0
    move v0, v2

    .line 65
    goto :goto_0

    :cond_1
    move v1, v2

    .line 66
    goto :goto_1
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Connection;)V
    .locals 3
    .parameter "cn"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    :try_start_0
    invoke-direct {p0, p1}, Lcom/motorola/android/telephony/ConnectionInfo;->getConnectionIndex(Lcom/android/internal/telephony/Connection;)I

    move-result v2

    iput v2, p0, Lcom/motorola/android/telephony/ConnectionInfo;->index:I
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    iput-boolean v2, p0, Lcom/motorola/android/telephony/ConnectionInfo;->isMT:Z

    .line 56
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v2

    iput-boolean v2, p0, Lcom/motorola/android/telephony/ConnectionInfo;->isMpty:Z

    .line 57
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/android/telephony/ConnectionInfo;->number:Ljava/lang/String;

    .line 58
    invoke-direct {p0, p1}, Lcom/motorola/android/telephony/ConnectionInfo;->initState(Lcom/android/internal/telephony/Connection;)V

    .line 59
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/motorola/android/telephony/ConnectionInfo;->TOA:I

    .line 60
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/android/telephony/ConnectionInfo;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 61
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 50
    .local v0, e:Lcom/android/internal/telephony/CallStateException;
    :try_start_1
    invoke-direct {p0, p1}, Lcom/motorola/android/telephony/ConnectionInfo;->getOldConnectionIndex(Lcom/android/internal/telephony/Connection;)I

    move-result v2

    iput v2, p0, Lcom/motorola/android/telephony/ConnectionInfo;->index:I
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 51
    :catch_1
    move-exception v1

    .line 52
    .local v1, e1:Lcom/android/internal/telephony/CallStateException;
    const/4 v2, -0x1

    iput v2, p0, Lcom/motorola/android/telephony/ConnectionInfo;->index:I

    goto :goto_0
.end method

.method private getConnectionIndex(Lcom/android/internal/telephony/Connection;)I
    .locals 3
    .parameter "cn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 147
    if-nez p1, :cond_0

    .line 148
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t get the index of null Connection"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    instance-of v0, p1, Lcom/android/internal/telephony/gsm/GsmConnection;

    if-eqz v0, :cond_1

    .line 150
    check-cast p1, Lcom/android/internal/telephony/gsm/GsmConnection;

    .end local p1
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->getConnectionIndex()I

    move-result v0

    .line 152
    :goto_0
    return v0

    .line 151
    .restart local p1
    :cond_1
    instance-of v0, p1, Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-eqz v0, :cond_2

    .line 152
    check-cast p1, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .end local p1
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getConnectionIndex()I

    move-result v0

    goto :goto_0

    .line 154
    .restart local p1
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad Connection Type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getOldConnectionIndex(Lcom/android/internal/telephony/Connection;)I
    .locals 3
    .parameter "cn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 159
    if-nez p1, :cond_0

    .line 160
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t get index from null Connection"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    instance-of v0, p1, Lcom/android/internal/telephony/gsm/GsmConnection;

    if-eqz v0, :cond_1

    .line 162
    check-cast p1, Lcom/android/internal/telephony/gsm/GsmConnection;

    .end local p1
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->getOldConnectionIndex()I

    move-result v0

    .line 164
    :goto_0
    return v0

    .line 163
    .restart local p1
    :cond_1
    instance-of v0, p1, Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-eqz v0, :cond_2

    .line 164
    check-cast p1, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .end local p1
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getOldConnectionIndex()I

    move-result v0

    goto :goto_0

    .line 166
    .restart local p1
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad Connection Type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initState(Lcom/android/internal/telephony/Connection;)V
    .locals 2
    .parameter "cn"

    .prologue
    .line 98
    sget-object v0, Lcom/motorola/android/telephony/ConnectionInfo$2;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/android/telephony/ConnectionInfo;->state:I

    .line 109
    :goto_0
    return-void

    .line 99
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/android/telephony/ConnectionInfo;->state:I

    goto :goto_0

    .line 100
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/android/telephony/ConnectionInfo;->state:I

    goto :goto_0

    .line 101
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/android/telephony/ConnectionInfo;->state:I

    goto :goto_0

    .line 102
    :pswitch_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/android/telephony/ConnectionInfo;->state:I

    goto :goto_0

    .line 103
    :pswitch_4
    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/android/telephony/ConnectionInfo;->state:I

    goto :goto_0

    .line 104
    :pswitch_5
    const/4 v0, 0x5

    iput v0, p0, Lcom/motorola/android/telephony/ConnectionInfo;->state:I

    goto :goto_0

    .line 105
    :pswitch_6
    const/4 v0, 0x6

    iput v0, p0, Lcom/motorola/android/telephony/ConnectionInfo;->state:I

    goto :goto_0

    .line 106
    :pswitch_7
    const/4 v0, 0x7

    iput v0, p0, Lcom/motorola/android/telephony/ConnectionInfo;->state:I

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public getCallIndex()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/motorola/android/telephony/ConnectionInfo;->index:I

    return v0
.end method

.method public getCallNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/motorola/android/telephony/ConnectionInfo;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getCallState()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/motorola/android/telephony/ConnectionInfo;->state:I

    return v0
.end method

.method public getDirection()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/motorola/android/telephony/ConnectionInfo;->isMT:Z

    return v0
.end method

.method public getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/motorola/android/telephony/ConnectionInfo;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    return-object v0
.end method

.method public getTypeOfAddr()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/motorola/android/telephony/ConnectionInfo;->TOA:I

    return v0
.end method

.method public isConference()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/motorola/android/telephony/ConnectionInfo;->isMpty:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .local v0, strbuf:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/android/telephony/ConnectionInfo;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", isMT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/motorola/android/telephony/ConnectionInfo;->isMT:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", isMpty="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/motorola/android/telephony/ConnectionInfo;->isMpty:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", num="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/android/telephony/ConnectionInfo;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/android/telephony/ConnectionInfo;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", TOA="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/android/telephony/ConnectionInfo;->TOA:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", cause="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/android/telephony/ConnectionInfo;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 74
    iget v0, p0, Lcom/motorola/android/telephony/ConnectionInfo;->index:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget-boolean v0, p0, Lcom/motorola/android/telephony/ConnectionInfo;->isMT:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-boolean v0, p0, Lcom/motorola/android/telephony/ConnectionInfo;->isMpty:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-object v0, p0, Lcom/motorola/android/telephony/ConnectionInfo;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget v0, p0, Lcom/motorola/android/telephony/ConnectionInfo;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget v0, p0, Lcom/motorola/android/telephony/ConnectionInfo;->TOA:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget-object v0, p0, Lcom/motorola/android/telephony/ConnectionInfo;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    return-void

    :cond_0
    move v0, v2

    .line 75
    goto :goto_0

    :cond_1
    move v1, v2

    .line 76
    goto :goto_1
.end method
