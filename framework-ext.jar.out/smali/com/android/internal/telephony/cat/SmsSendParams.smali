.class Lcom/android/internal/telephony/cat/SmsSendParams;
.super Lcom/android/internal/telephony/cat/DisplayTextParams;
.source "CommandParams.java"


# instance fields
.field address:Ljava/lang/String;

.field isCdmaTpdu:Z

.field smsTpdu:[B


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/lang/String;[B[BLcom/android/internal/telephony/cat/TextMessage;)V
    .locals 2
    .parameter "cmdDest"
    .parameter "address"
    .parameter "gsmSmsTpdu"
    .parameter "cdmaSmsTpdu"
    .parameter "textMsg"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, p5}, Lcom/android/internal/telephony/cat/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    .line 81
    iput-object v1, p0, Lcom/android/internal/telephony/cat/SmsSendParams;->address:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/android/internal/telephony/cat/SmsSendParams;->smsTpdu:[B

    .line 83
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/SmsSendParams;->isCdmaTpdu:Z

    .line 86
    iput-object p2, p0, Lcom/android/internal/telephony/cat/SmsSendParams;->address:Ljava/lang/String;

    .line 87
    if-eqz p3, :cond_1

    if-nez p4, :cond_1

    .line 88
    iput-object p3, p0, Lcom/android/internal/telephony/cat/SmsSendParams;->smsTpdu:[B

    .line 89
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/SmsSendParams;->isCdmaTpdu:Z

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    if-eqz p4, :cond_0

    if-nez p3, :cond_0

    .line 92
    iput-object p4, p0, Lcom/android/internal/telephony/cat/SmsSendParams;->smsTpdu:[B

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/SmsSendParams;->isCdmaTpdu:Z

    goto :goto_0
.end method
