.class public Landroid/telephony/SmsMessage$DeliverPdu;
.super Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SmsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeliverPdu"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;-><init>()V

    .line 146
    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;)V
    .locals 1
    .parameter "spb"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;-><init>()V

    .line 150
    iget-object v0, p1, Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;->encodedMessage:[B

    iput-object v0, p0, Landroid/telephony/SmsMessage$DeliverPdu;->encodedMessage:[B

    .line 151
    iget-object v0, p1, Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;->encodedScAddress:[B

    iput-object v0, p0, Landroid/telephony/SmsMessage$DeliverPdu;->encodedScAddress:[B

    .line 152
    return-void
.end method
