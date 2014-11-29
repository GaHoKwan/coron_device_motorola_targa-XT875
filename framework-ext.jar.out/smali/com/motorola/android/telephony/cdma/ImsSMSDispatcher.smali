.class public final Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;
.super Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;
.source "ImsSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ThreegppSipPduParser;,
        Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsMessageListener;,
        Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsException;,
        Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsServiceListener;,
        Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsConnectionListener;,
        Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;,
        Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$Retry;
    }
.end annotation


# static fields
.field private static final CHANNEL_1X:I = 0x1

.field private static final CHANNEL_IMS:I = 0x0

.field private static final EVENT_CLOSE_IMS_SERVICE:I = 0x17

.field private static final EVENT_CREATE_IMS_SERVICE:I = 0x14

.field private static final EVENT_DESTROY_IMS_SERVICE:I = 0x15

.field private static final EVENT_ENVELOP_RESPONSE:I = 0x19

.field private static final EVENT_OPEN_IMS_SERVICE:I = 0x16

.field private static final EVENT_QUERY_SMSC_DONE:I = 0x18

.field private static final IMS_SERVICE_NAME:Ljava/lang/String; = "smsonims"

.field private static final LOG_TAG:Ljava/lang/String; = "ImsSMSDispatcher"

.field private static final RESPONSE_STR_FROM_SIM_ERROR_6F:Ljava/lang/String; = "6F XX"

.field private static final RESPONSE_STR_FROM_SIM_OK:Ljava/lang/String; = "90 00"

.field private static final TAG:Ljava/lang/String; = "ImsSMSDispatcher"

.field private static final local_logv:Z = true

.field private static sRpMessageRefCounter:I

.field private static volatile singleton:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;


# instance fields
.field private mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

.field private mDefaultSmsc:Ljava/lang/String;

.field private mIMSManager:Lcom/motorola/android/ims/IMSManager;

.field private mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

.field private mIs3gppFormat:Z

.field private mIsSmsLimitedMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->singleton:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    .line 128
    const/4 v0, 0x0

    sput v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->sRpMessageRefCounter:I

    return-void
.end method

.method private constructor <init>(ILcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 2
    .parameter "ownerModemId"
    .parameter "phone"
    .parameter "storageMonitor"
    .parameter "usageMonitor"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 475
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;-><init>(ILcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    .line 121
    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSManager:Lcom/motorola/android/ims/IMSManager;

    .line 122
    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    .line 123
    iput-boolean v1, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIs3gppFormat:Z

    .line 124
    iput-boolean v1, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIsSmsLimitedMode:Z

    .line 126
    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mDefaultSmsc:Ljava/lang/String;

    .line 476
    const-string v0, "ImsSMSDispatcher"

    const-string v1, "ImsSMSDispatcher - dual mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getCommandsInterface()Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 478
    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 2
    .parameter "phone"
    .parameter "storageMonitor"
    .parameter "usageMonitor"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 429
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    .line 121
    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSManager:Lcom/motorola/android/ims/IMSManager;

    .line 122
    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    .line 123
    iput-boolean v1, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIs3gppFormat:Z

    .line 124
    iput-boolean v1, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIsSmsLimitedMode:Z

    .line 126
    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mDefaultSmsc:Ljava/lang/String;

    .line 431
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getCommandsInterface()Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 433
    const-string v0, "ImsSMSDispatcher"

    const-string v1, "ImsSMSDispatcher"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 436
    return-void
.end method

.method private constructor <init>(ZZLcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 2
    .parameter "isCdmaGsmWorldPhone"
    .parameter "isSwitchedToCdma"
    .parameter "phone"
    .parameter "storageMonitor"
    .parameter "usageMonitor"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 457
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;-><init>(ZZLcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    .line 121
    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSManager:Lcom/motorola/android/ims/IMSManager;

    .line 122
    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    .line 123
    iput-boolean v1, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIs3gppFormat:Z

    .line 124
    iput-boolean v1, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIsSmsLimitedMode:Z

    .line 126
    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mDefaultSmsc:Ljava/lang/String;

    .line 458
    const-string v0, "ImsSMSDispatcher"

    const-string v1, "ImsSMSDispatcher - dual mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-virtual {p3}, Lcom/android/internal/telephony/PhoneBase;->getCommandsInterface()Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 462
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 463
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 94
    sget v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->sRpMessageRefCounter:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    sput p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->sRpMessageRefCounter:I

    return p0
.end method

.method static synthetic access$004()I
    .locals 1

    .prologue
    .line 94
    sget v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->sRpMessageRefCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->sRpMessageRefCounter:I

    return v0
.end method

.method static synthetic access$100(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIsSmsLimitedMode:Z

    return v0
.end method

.method static synthetic access$102(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIsSmsLimitedMode:Z

    return p1
.end method

.method static synthetic access$200(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIs3gppFormat:Z

    return v0
.end method

.method static synthetic access$302(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIs3gppFormat:Z

    return p1
.end method

.method static synthetic access$400(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$600(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static create3gppSipPduRpAck(I)[B
    .locals 6
    .parameter "rpMessageRef"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1070
    const/4 v3, 0x0

    new-array v0, v3, [B

    .line 1073
    .local v0, baSipPdu:[B
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1074
    .local v2, result:Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1075
    invoke-virtual {v2, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1077
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1082
    .end local v2           #result:Ljava/io/ByteArrayOutputStream;
    :goto_0
    return-object v0

    .line 1078
    :catch_0
    move-exception v1

    .line 1079
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "ImsSMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " exception  is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static create3gppSipPduRpError(BB)[B
    .locals 6
    .parameter "rpMessageRef"
    .parameter "tpFCS"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1090
    new-array v0, v3, [B

    .line 1093
    .local v0, baSipPdu:[B
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1094
    .local v2, result:Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1095
    invoke-virtual {v2, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1096
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1097
    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1103
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1106
    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1109
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1113
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1118
    .end local v2           #result:Ljava/io/ByteArrayOutputStream;
    :goto_0
    return-object v0

    .line 1114
    :catch_0
    move-exception v1

    .line 1115
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "ImsSMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " exception  is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance(ILcom/android/internal/telephony/cdma/CDMAPhone;)Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;
    .locals 3
    .parameter "ownerModemId"
    .parameter "phone"

    .prologue
    .line 467
    sget-object v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->singleton:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    if-nez v0, :cond_0

    .line 468
    new-instance v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object v2, p1, Lcom/android/internal/telephony/PhoneBase;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;-><init>(ILcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    sput-object v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->singleton:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    .line 470
    :cond_0
    sget-object v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->singleton:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    return-object v0
.end method

.method public static getInstance(Lcom/android/internal/telephony/cdma/CDMAPhone;)Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;
    .locals 3
    .parameter "phone"

    .prologue
    .line 440
    sget-object v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->singleton:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    if-nez v0, :cond_0

    .line 441
    new-instance v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-direct {v0, p0, v1, v2}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    sput-object v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->singleton:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    .line 443
    :cond_0
    sget-object v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->singleton:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    return-object v0
.end method

.method public static getInstance(ZZLcom/android/internal/telephony/cdma/CDMAPhone;)Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;
    .locals 6
    .parameter "isCdmaGsmWorldPhone"
    .parameter "isSwitchedToCdma"
    .parameter "phone"

    .prologue
    .line 449
    sget-object v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->singleton:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    if-nez v0, :cond_0

    .line 450
    new-instance v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    iget-object v4, p2, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object v5, p2, Lcom/android/internal/telephony/PhoneBase;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    move v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;-><init>(ZZLcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    sput-object v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->singleton:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    .line 452
    :cond_0
    sget-object v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->singleton:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    return-object v0
.end method

.method private handleMessageEventEnvelopResponse(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    .line 958
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 959
    .local v0, ar:Landroid/os/AsyncResult;
    if-nez v0, :cond_0

    .line 960
    const-string v11, "ImsSMSDispatcher"

    const-string v12, "warning: in handleMessageEventEnvelopResponse, ar is null"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    :goto_0
    return-void

    .line 965
    :cond_0
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/android/ims/service/smsonims/PageMessage;

    .line 966
    .local v3, origPageMsg:Lcom/motorola/android/ims/service/smsonims/PageMessage;
    if-nez v3, :cond_1

    .line 967
    const-string v11, "ImsSMSDispatcher"

    const-string v12, "warning: in handleMessageEventEnvelopResponse, origPageMsg is null"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 972
    :cond_1
    invoke-virtual {v3}, Lcom/motorola/android/ims/service/smsonims/PageMessage;->getBody()[B

    move-result-object v5

    .line 973
    .local v5, origSipPdu:[B
    if-nez v5, :cond_2

    .line 974
    const-string v11, "ImsSMSDispatcher"

    const-string v12, "warning: in handleMessageEventEnvelopResponse, origSipPdu is null"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 979
    :cond_2
    const-string v11, "ImsSMSDispatcher"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "origSipPdu: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v5}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    new-instance v6, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ThreegppSipPduParser;

    invoke-direct {v6, v5}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ThreegppSipPduParser;-><init>([B)V

    .line 984
    .local v6, pduParser:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ThreegppSipPduParser;
    iget-byte v4, v6, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ThreegppSipPduParser;->mRP_MessageReference:B

    .line 987
    .local v4, origRpMessageRef:B
    iget-object v9, v6, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ThreegppSipPduParser;->mstrRP_OriginatorAddress:Ljava/lang/String;

    .line 989
    .local v9, strOrigAddr:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "tel:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_4

    .end local v9           #strOrigAddr:Ljava/lang/String;
    :goto_1
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 994
    .local v10, toAddr:Ljava/lang/String;
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 995
    .local v7, res:Ljava/lang/String;
    const-string v11, "ImsSMSDispatcher"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Get Response result From SIM is: \""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v11, :cond_5

    .line 999
    const-string v11, "ImsSMSDispatcher"

    const-string v12, "ar.exception="

    iget-object v13, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v11, v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1001
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1002
    const-string v7, "6F XX"

    .line 1010
    :cond_3
    :goto_2
    const/4 v8, 0x0

    .line 1014
    .local v8, sipPdu:[B
    :try_start_0
    const-string v11, "90 00"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1015
    invoke-static {v4}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->create3gppSipPduRpAck(I)[B
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v8

    .line 1041
    :goto_3
    const-string v12, "ImsSMSDispatcher"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sipPdu: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez v8, :cond_b

    const-string v11, "(null)"

    :goto_4
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    iget-object v11, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    if-eqz v11, :cond_c

    if-eqz v8, :cond_c

    .line 1046
    iget-object v11, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    invoke-virtual {v11, v10, v8}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->createSMSMessage(Ljava/lang/String;[B)Lcom/motorola/android/ims/service/smsonims/PageMessage;

    move-result-object v2

    .line 1047
    .local v2, mPageMessage:Lcom/motorola/android/ims/service/smsonims/PageMessage;
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Lcom/motorola/android/ims/service/smsonims/PageMessage;->setFormat(I)V

    .line 1049
    new-instance v11, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$2;

    invoke-direct {v11, p0}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$2;-><init>(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;)V

    invoke-virtual {v2, v11}, Lcom/motorola/android/ims/service/smsonims/PageMessage;->setListener(Lcom/motorola/android/ims/service/smsonims/PageMessageListener;)V

    .line 1056
    invoke-virtual {v2}, Lcom/motorola/android/ims/service/smsonims/PageMessage;->send()V

    goto/16 :goto_0

    .line 989
    .end local v2           #mPageMessage:Lcom/motorola/android/ims/service/smsonims/PageMessage;
    .end local v7           #res:Ljava/lang/String;
    .end local v8           #sipPdu:[B
    .end local v10           #toAddr:Ljava/lang/String;
    .restart local v9       #strOrigAddr:Ljava/lang/String;
    :cond_4
    iget-object v9, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mDefaultSmsc:Ljava/lang/String;

    goto/16 :goto_1

    .line 1005
    .end local v9           #strOrigAddr:Ljava/lang/String;
    .restart local v7       #res:Ljava/lang/String;
    .restart local v10       #toAddr:Ljava/lang/String;
    :cond_5
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1006
    const-string v7, "90 00"

    goto :goto_2

    .line 1016
    .restart local v8       #sipPdu:[B
    :cond_6
    :try_start_1
    const-string v11, "93 00"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1018
    const/16 v11, -0x2c

    invoke-static {v4, v11}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->create3gppSipPduRpError(BB)[B

    move-result-object v8

    goto :goto_3

    .line 1020
    :cond_7
    const-string v11, "9F "

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1021
    const-string v11, "ImsSMSDispatcher"

    const-string v12, "warning: res is \"9F \", handle as 6F XX"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    :cond_8
    :goto_5
    const/16 v11, -0x2b

    invoke-static {v4, v11}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->create3gppSipPduRpError(BB)[B

    move-result-object v8

    goto :goto_3

    .line 1022
    :cond_9
    const-string v11, "6F "

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 1023
    const-string v11, "9E "

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1024
    const-string v11, "ImsSMSDispatcher"

    const-string v12, "warning: res is \"9E \", handle as 6F XX"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_5

    .line 1032
    :catch_0
    move-exception v1

    .line 1033
    .local v1, e:Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    const-string v11, "ImsSMSDispatcher"

    const-string v12, ""

    invoke-static {v11, v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1026
    .end local v1           #e:Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    :cond_a
    :try_start_2
    const-string v11, "ImsSMSDispatcher"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "warning: unknown Response From SIM:\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\",handle as 6F XX"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    .line 1034
    :catch_1
    move-exception v1

    .line 1035
    .local v1, e:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    const-string v11, "ImsSMSDispatcher"

    const-string v12, ""

    invoke-static {v11, v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1036
    .end local v1           #e:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    :catch_2
    move-exception v1

    .line 1037
    .local v1, e:Ljava/io/IOException;
    const-string v11, "ImsSMSDispatcher"

    const-string v12, ""

    invoke-static {v11, v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1041
    .end local v1           #e:Ljava/io/IOException;
    :cond_b
    invoke-static {v8}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_4

    .line 1059
    :cond_c
    const-string v11, "ImsSMSDispatcher"

    const-string v12, "warning: mPageMessage cannot be sent!"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 13
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "appPackage"
    .parameter "destAddr"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_mo_sms_over_ims"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v10, 0x1

    .line 202
    .local v10, moSmsOverIms:Z
    :goto_0
    const/4 v11, 0x1

    .line 204
    .local v11, nvImsSmsOverIP:Z
    :try_start_0
    const-string v0, "iphonenvinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/android/telephony/IPhoneNVInfo;

    move-result-object v12

    .line 206
    .local v12, nvInfo:Lcom/motorola/android/telephony/IPhoneNVInfo;
    if-eqz v12, :cond_2

    .line 207
    invoke-interface {v12}, Lcom/motorola/android/telephony/IPhoneNVInfo;->getImsSmsOverIP()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 218
    .end local v12           #nvInfo:Lcom/motorola/android/telephony/IPhoneNVInfo;
    :goto_1
    if-nez v10, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hasLteServiceOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    if-eqz v11, :cond_3

    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    invoke-virtual {v0}, Lcom/motorola/android/ims/IMSService;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/4 v5, 0x1

    .line 224
    .local v5, imsAvailable:Z
    :goto_2
    const-string v1, "ImsSMSDispatcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LteOnly="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->hasLteServiceOnly()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", moSmsOverIms="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", NV ImsSmsOverIP="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", ImsServiceOpen="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    invoke-virtual {v0}, Lcom/motorola/android/ims/IMSService;->getState()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", imsAvailable="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    new-instance v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;

    if-eqz v5, :cond_6

    const/4 v6, 0x0

    :goto_4
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;-><init>(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 200
    .end local v5           #imsAvailable:Z
    .end local v10           #moSmsOverIms:Z
    .end local v11           #nvImsSmsOverIP:Z
    :cond_1
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 209
    .restart local v10       #moSmsOverIms:Z
    .restart local v11       #nvImsSmsOverIP:Z
    .restart local v12       #nvInfo:Lcom/motorola/android/telephony/IPhoneNVInfo;
    :cond_2
    :try_start_1
    const-string v0, "ImsSMSDispatcher"

    const-string v1, "Get null object of IPhoneNVInfo !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 211
    .end local v12           #nvInfo:Lcom/motorola/android/telephony/IPhoneNVInfo;
    :catch_0
    move-exception v9

    .line 212
    .local v9, e:Landroid/os/RemoteException;
    const-string v0, "ImsSMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error get NV ImsSmsOverIP: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 218
    .end local v9           #e:Landroid/os/RemoteException;
    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 224
    .restart local v5       #imsAvailable:Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 229
    :cond_6
    const/4 v6, 0x1

    goto :goto_4
.end method

.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;)V
    .locals 3
    .parameter "success"
    .parameter "result"
    .parameter "response"
    .parameter "mtSmsTracker"

    .prologue
    .line 502
    const-string v1, "ImsSMSDispatcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "success="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; result="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; delivered by:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p4, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    if-eqz p4, :cond_1

    iget v0, p4, Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;->mDeliveredBy:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 510
    const-string v0, "ImsSMSDispatcher"

    const-string v1, "ACK 1x sms"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;)V

    .line 531
    :goto_1
    return-void

    .line 502
    :cond_0
    iget v0, p4, Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;->mDeliveredBy:I

    goto :goto_0

    .line 513
    :cond_1
    if-eqz p4, :cond_2

    iget v0, p4, Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;->mDeliveredBy:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 521
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    .line 522
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    .line 524
    const-string v0, "ImsSMSDispatcher"

    const-string v1, "Don\'t need to ack on SMS layer for SMS over IMS."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 526
    :cond_2
    const-string v0, "ImsSMSDispatcher"

    const-string v1, "Ack by 1x for SIM OTA SMS which saved by RIL/modem."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;Lcom/android/internal/telephony/SMSDispatcher$MtSmsTracker;)V

    goto :goto_1
.end method

.method public activate()V
    .locals 1

    .prologue
    .line 481
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->activate()V

    .line 482
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 483
    return-void
.end method

.method public deactivate()V
    .locals 0

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->dispose()V

    .line 487
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 491
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->dispose()V

    .line 492
    const-string v0, "ImsSMSDispatcher"

    const-string v1, "dispose"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 494
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 795
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleMessage(Landroid/os/Message;)V

    .line 797
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 876
    :cond_0
    :goto_0
    return-void

    .line 799
    :pswitch_0
    const-string v2, "ImsSMSDispatcher"

    const-string v3, "EVENT_CREATE_IMS_SERVICE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/motorola/android/ims/IMSManager;->getManager(Landroid/content/Context;)Lcom/motorola/android/ims/IMSManager;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSManager:Lcom/motorola/android/ims/IMSManager;

    .line 802
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSManager:Lcom/motorola/android/ims/IMSManager;

    if-nez v2, :cond_1

    .line 803
    const-string v2, "ImsSMSDispatcher"

    const-string v3, "FATAL - Fail to get IMSManager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 807
    :cond_1
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSManager:Lcom/motorola/android/ims/IMSManager;

    new-instance v3, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsConnectionListener;

    invoke-direct {v3, p0}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsConnectionListener;-><init>(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;)V

    invoke-virtual {v2, v3}, Lcom/motorola/android/ims/IMSManager;->setListener(Lcom/motorola/android/ims/ConnectionStateListener;)V

    .line 811
    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSManager:Lcom/motorola/android/ims/IMSManager;

    const-string v3, "smsonims"

    invoke-virtual {v2, v3}, Lcom/motorola/android/ims/IMSManager;->createService(Ljava/lang/String;)Lcom/motorola/android/ims/IMSService;

    move-result-object v2

    check-cast v2, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    iput-object v2, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    .line 812
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    if-nez v2, :cond_2

    .line 813
    const-string v2, "ImsSMSDispatcher"

    const-string v3, "FATAL - Fail to create SmsOnIMSService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/motorola/android/ims/IMSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 822
    :catch_0
    move-exception v1

    .line 823
    .local v1, e:Lcom/motorola/android/ims/IMSException;
    const-string v2, "ImsSMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail create service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 816
    .end local v1           #e:Lcom/motorola/android/ims/IMSException;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    new-instance v3, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsServiceListener;

    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    invoke-direct {v3, p0, v4}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsServiceListener;-><init>(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;Lcom/motorola/android/ims/IMSService;)V

    invoke-virtual {v2, v3}, Lcom/motorola/android/ims/IMSService;->setListener(Lcom/motorola/android/ims/IMSServiceListener;)V

    .line 819
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSManager:Lcom/motorola/android/ims/IMSManager;

    invoke-virtual {v2}, Lcom/motorola/android/ims/IMSManager;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 820
    const/16 v2, 0x16

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Lcom/motorola/android/ims/IMSException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 824
    :catch_1
    move-exception v1

    .line 825
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "ImsSMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail create service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 830
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :pswitch_1
    const-string v2, "ImsSMSDispatcher"

    const-string v3, "EVENT_DESTROY_IMS_SERVICE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    invoke-virtual {v2}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->close()V

    .line 833
    :cond_3
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSManager:Lcom/motorola/android/ims/IMSManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSManager:Lcom/motorola/android/ims/IMSManager;

    invoke-virtual {v2}, Lcom/motorola/android/ims/IMSManager;->onDestroy()V

    goto/16 :goto_0

    .line 837
    :pswitch_2
    const-string v2, "ImsSMSDispatcher"

    const-string v3, "EVENT_OPEN_IMS_SERVICE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    :try_start_2
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    invoke-virtual {v2}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->open()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/motorola/android/ims/IMSException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .line 841
    :catch_2
    move-exception v1

    .line 842
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v2, "ImsSMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail open service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 843
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v1

    .line 844
    .local v1, e:Lcom/motorola/android/ims/IMSException;
    const-string v2, "ImsSMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail open service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 849
    .end local v1           #e:Lcom/motorola/android/ims/IMSException;
    :pswitch_3
    const-string v2, "ImsSMSDispatcher"

    const-string v3, "EVENT_CLOSE_IMS_SERVICE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 856
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 857
    .local v0, ar:Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    .line 858
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_4

    .line 859
    const-string v2, "ImsSMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error get default SMSC address"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 861
    :cond_4
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mDefaultSmsc:Ljava/lang/String;

    goto/16 :goto_0

    .line 870
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->handleMessageEventEnvelopResponse(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 797
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected handleSendComplete(Landroid/os/AsyncResult;)V
    .locals 16
    .parameter "ar"

    .prologue
    .line 686
    const-string v13, "ImsSMSDispatcher"

    const-string v14, "handleSendComplete"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v12, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;

    .line 689
    .local v12, tracker:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/telephony/SmsResponse;

    .line 691
    .local v10, smsResponse:Lcom/android/internal/telephony/SmsResponse;
    iget-boolean v13, v12, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;->mImsSms:Z

    if-nez v13, :cond_1

    .line 693
    const-string v13, "ImsSMSDispatcher"

    const-string v14, "1x sms"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleSendComplete(Landroid/os/AsyncResult;)V

    .line 791
    :cond_0
    :goto_0
    return-void

    .line 701
    :cond_1
    iget-object v9, v12, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    .line 703
    .local v9, sentIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v13, :cond_3

    .line 704
    const-string v13, "ImsSMSDispatcher"

    const-string v14, "SMS send successfully"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v13, v12, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v13, :cond_2

    .line 708
    iget v13, v10, Lcom/android/internal/telephony/SmsResponse;->messageRef:I

    iput v13, v12, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    .line 709
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    :cond_2
    if-eqz v9, :cond_0

    .line 714
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 715
    .local v4, intent:Landroid/content/Intent;
    const-string v13, "refNumber"

    iget v14, v10, Lcom/android/internal/telephony/SmsResponse;->messageRef:I

    invoke-virtual {v4, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 717
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v14, -0x1

    invoke-virtual {v9, v13, v14, v4}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 718
    :catch_0
    move-exception v13

    goto :goto_0

    .line 721
    .end local v4           #intent:Landroid/content/Intent;
    :cond_3
    const-string v13, "ImsSMSDispatcher"

    const-string v14, "SMS send failed and retry"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v13}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getState()I

    move-result v11

    .line 725
    .local v11, ss:I
    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    invoke-virtual {v13}, Lcom/motorola/android/ims/IMSService;->getState()I

    move-result v13

    const/4 v14, 0x2

    if-eq v13, v14, :cond_5

    .line 729
    :cond_4
    iget-object v13, v12, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    invoke-static {v11, v13}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->handleNotInService(ILandroid/app/PendingIntent;)V

    goto :goto_0

    .line 731
    :cond_5
    iget-object v13, v12, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;->mRetries:Ljava/util/LinkedList;

    invoke-virtual {v13}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$Retry;

    .line 732
    .local v7, retry:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$Retry;
    if-nez v7, :cond_7

    .line 733
    const-string v13, "ImsSMSDispatcher"

    const-string v14, "retry is null, stop retrying!"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget-object v13, v12, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v13, :cond_0

    .line 736
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 737
    .local v3, fillIn:Landroid/content/Intent;
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v13, :cond_6

    .line 738
    const-string v14, "errorCode"

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, Lcom/android/internal/telephony/SmsResponse;

    iget v13, v13, Lcom/android/internal/telephony/SmsResponse;->errorCode:I

    invoke-virtual {v3, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 739
    const-string v14, "ImsSMSDispatcher"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Temporary Error, Error No: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, Lcom/android/internal/telephony/SmsResponse;

    iget v13, v13, Lcom/android/internal/telephony/SmsResponse;->errorCode:I

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_6
    :try_start_1
    iget-object v13, v12, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/16 v15, 0xff

    invoke-virtual {v13, v14, v15, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 746
    :catch_1
    move-exception v2

    .line 747
    .local v2, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v13, "ImsSMSDispatcher"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " send fail - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 751
    .end local v2           #ex:Landroid/app/PendingIntent$CanceledException;
    .end local v3           #fillIn:Landroid/content/Intent;
    :cond_7
    const-string v13, "ImsSMSDispatcher"

    invoke-virtual {v7}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$Retry;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-boolean v13, v7, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$Retry;->mPrompt:Z

    if-eqz v13, :cond_8

    .line 755
    new-instance v5, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v12}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$1;-><init>(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;)V

    .line 769
    .local v5, mListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    .line 771
    .local v6, r:Landroid/content/res/Resources;
    new-instance v13, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v14, 0x1040418

    invoke-virtual {v6, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const-string v14, "Message failed would you like to retry?"

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x104041a

    invoke-virtual {v6, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x104041b

    invoke-virtual {v6, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 778
    .local v1, d:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    const/16 v14, 0x7d3

    invoke-virtual {v13, v14}, Landroid/view/Window;->setType(I)V

    .line 779
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 783
    .end local v1           #d:Landroid/app/AlertDialog;
    .end local v5           #mListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v6           #r:Landroid/content/res/Resources;
    :cond_8
    iget v13, v7, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$Retry;->mChannel:I

    iput v13, v12, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;->mChannel:I

    .line 786
    const/4 v13, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 787
    .local v8, retryMsg:Landroid/os/Message;
    iget v13, v7, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$Retry;->mDelay:I

    int-to-long v13, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 14
    .parameter "tr"

    .prologue
    .line 593
    const-string v11, "ImsSMSDispatcher"

    const-string v12, "sendSms"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-boolean v11, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIsSmsLimitedMode:Z

    if-eqz v11, :cond_1

    .line 595
    const-string v11, "ImsSMSDispatcher"

    const-string v12, "IMS in limited mode, sending over 1x"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 682
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    iget-object v11, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->hasLteServiceOnly()Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    invoke-virtual {v11}, Lcom/motorola/android/ims/IMSService;->getState()I

    move-result v11

    const/4 v12, 0x2

    if-eq v11, v12, :cond_3

    .line 606
    :cond_2
    const-string v11, "ImsSMSDispatcher"

    const-string v12, "Has LTE service only but IMSService is not available! Stop send!"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v11, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v11, :cond_0

    .line 610
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 611
    .local v3, fillIn:Landroid/content/Intent;
    const/4 v1, 0x1

    .line 612
    .local v1, errorCode:I
    const-string v11, "errorCode"

    invoke-virtual {v3, v11, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 613
    const-string v11, "ImsSMSDispatcher"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Internal Error, Error No: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :try_start_0
    iget-object v11, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    iget-object v12, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/16 v13, 0x101

    invoke-virtual {v11, v12, v13, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 617
    :catch_0
    move-exception v2

    .line 618
    .local v2, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v11, "ImsSMSDispatcher"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " send fail - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #errorCode:I
    .end local v2           #ex:Landroid/app/PendingIntent$CanceledException;
    .end local v3           #fillIn:Landroid/content/Intent;
    :cond_3
    move-object v10, p1

    .line 625
    check-cast v10, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;

    .line 628
    .local v10, tracker:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;
    iget-boolean v11, v10, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;->mImsSms:Z

    if-eqz v11, :cond_4

    iget v11, v10, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;->mChannel:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    .line 629
    :cond_4
    const-string v11, "ImsSMSDispatcher"

    const-string v12, "sending over 1x"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-super {p0, v10}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 635
    :cond_5
    iget-object v5, v10, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 636
    .local v5, map:Ljava/util/HashMap;
    const-string v11, "pdu"

    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    move-object v6, v11

    check-cast v6, [B

    .line 637
    .local v6, pdu:[B
    const-string v11, "sip_pdu"

    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    move-object v7, v11

    check-cast v7, [B

    .line 638
    .local v7, sipPdu:[B
    const-string v11, "smsc"

    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    move-object v8, v11

    check-cast v8, [B

    .line 639
    .local v8, smsc:[B
    if-nez v7, :cond_6

    .line 641
    if-eqz v6, :cond_6

    .line 643
    :try_start_1
    iget-boolean v11, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIs3gppFormat:Z

    if-eqz v11, :cond_8

    .line 644
    iget-object v11, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mDefaultSmsc:Ljava/lang/String;

    iget v12, v10, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;->mRpMessageRef:I

    invoke-static {v6, v10, v11, v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->create3gppSipPdu([BLcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;I)V

    .line 650
    :goto_1
    const-string v11, "sip_pdu"

    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    move-object v0, v11

    check-cast v0, [B

    move-object v7, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 657
    :cond_6
    :goto_2
    if-eqz v7, :cond_0

    .line 661
    const/4 v9, 0x0

    .line 662
    .local v9, toAddr:Ljava/lang/String;
    iget-boolean v11, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIs3gppFormat:Z

    if-eqz v11, :cond_9

    .line 663
    invoke-static {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->smscByteToString([B)Ljava/lang/String;

    move-result-object v9

    .line 664
    if-nez v9, :cond_7

    .line 665
    iget-object v9, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mDefaultSmsc:Ljava/lang/String;

    .line 671
    :cond_7
    :goto_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "tel:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 672
    iget-object v11, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    if-eqz v11, :cond_0

    .line 673
    iget-object v11, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    invoke-virtual {v11, v9, v7}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->createSMSMessage(Ljava/lang/String;[B)Lcom/motorola/android/ims/service/smsonims/PageMessage;

    move-result-object v4

    .line 674
    .local v4, mPageMessage:Lcom/motorola/android/ims/service/smsonims/PageMessage;
    const-string v11, "ImsSMSDispatcher"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "toAddr: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    new-instance v11, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsMessageListener;

    invoke-direct {v11, p0, v10}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsMessageListener;-><init>(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;)V

    invoke-virtual {v4, v11}, Lcom/motorola/android/ims/service/smsonims/PageMessage;->setListener(Lcom/motorola/android/ims/service/smsonims/PageMessageListener;)V

    .line 677
    invoke-virtual {v4}, Lcom/motorola/android/ims/service/smsonims/PageMessage;->send()V

    goto/16 :goto_0

    .line 647
    .end local v4           #mPageMessage:Lcom/motorola/android/ims/service/smsonims/PageMessage;
    .end local v9           #toAddr:Ljava/lang/String;
    :cond_8
    :try_start_2
    invoke-static {v6, v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->createSipPdu([BLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 651
    :catch_1
    move-exception v2

    .line 652
    .local v2, ex:Ljava/lang/Exception;
    const-string v11, "ImsSMSDispatcher"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SIP Pdu encode failed: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 667
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v9       #toAddr:Ljava/lang/String;
    :cond_9
    const-string v11, "desitnation_addr"

    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #toAddr:Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .restart local v9       #toAddr:Ljava/lang/String;
    goto :goto_3
.end method

.method protected sendStkSms([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 13
    .parameter "smsc"
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 538
    const-string v1, "ImsSMSDispatcher"

    const-string v3, "sendStkSms"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    if-nez p2, :cond_1

    .line 540
    if-eqz p3, :cond_0

    .line 542
    const/4 v1, 0x3

    :try_start_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_2

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 548
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "smsc"

    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    const-string v1, "pdu"

    invoke-virtual {v2, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {v1 .. v6}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v12

    check-cast v12, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;

    .line 552
    .local v12, tracker:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;
    iget-object v1, v12, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;->mRetries:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 553
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v10

    .line 554
    .local v10, ss:I
    if-eqz v10, :cond_3

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    invoke-virtual {v1}, Lcom/motorola/android/ims/IMSService;->getState()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    .line 558
    :cond_2
    iget-object v1, v12, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    invoke-static {v10, v1}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->handleNotInService(ILandroid/app/PendingIntent;)V

    goto :goto_0

    .line 563
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mDefaultSmsc:Ljava/lang/String;

    iget v3, v12, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;->mRpMessageRef:I

    invoke-static {p2, v12, v1, v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->create3gppSipPduFromRawPdu([BLcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;I)V

    .line 564
    const-string v1, "sip_pdu"

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    move-object v9, v0

    .line 565
    .local v9, sipPdu:[B
    if-eqz v9, :cond_0

    .line 566
    const-string v1, "ImsSMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "smsc pdu is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->smscByteToString([B)Ljava/lang/String;

    move-result-object v11

    .line 568
    .local v11, toAddr:Ljava/lang/String;
    if-nez v11, :cond_4

    .line 569
    iget-object v11, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mDefaultSmsc:Ljava/lang/String;

    .line 570
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 571
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    if-eqz v1, :cond_5

    .line 572
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    invoke-virtual {v1, v11, v9}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->createSMSMessage(Ljava/lang/String;[B)Lcom/motorola/android/ims/service/smsonims/PageMessage;

    move-result-object v8

    .line 573
    .local v8, mPageMessage:Lcom/motorola/android/ims/service/smsonims/PageMessage;
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lcom/motorola/android/ims/service/smsonims/PageMessage;->setFormat(I)V

    .line 574
    const-string v1, "ImsSMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toAddr: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    new-instance v1, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsMessageListener;

    invoke-direct {v1, p0, v12}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsMessageListener;-><init>(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;)V

    invoke-virtual {v8, v1}, Lcom/motorola/android/ims/service/smsonims/PageMessage;->setListener(Lcom/motorola/android/ims/service/smsonims/PageMessageListener;)V

    .line 576
    invoke-virtual {v8}, Lcom/motorola/android/ims/service/smsonims/PageMessage;->send()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 586
    .end local v8           #mPageMessage:Lcom/motorola/android/ims/service/smsonims/PageMessage;
    .end local v9           #sipPdu:[B
    .end local v11           #toAddr:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 587
    .local v7, ex:Ljava/lang/Exception;
    const-string v1, "ImsSMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stk gsm pdu send failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 578
    .end local v7           #ex:Ljava/lang/Exception;
    .restart local v9       #sipPdu:[B
    .restart local v11       #toAddr:Ljava/lang/String;
    :cond_5
    :try_start_2
    const-string v1, "ImsSMSDispatcher"

    const-string v3, "No IMS server,send failed"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 579
    if-eqz p3, :cond_0

    .line 581
    const/4 v1, 0x1

    :try_start_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_3
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 582
    :catch_1
    move-exception v1

    goto/16 :goto_0

    .line 543
    .end local v2           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9           #sipPdu:[B
    .end local v10           #ss:I
    .end local v11           #toAddr:Ljava/lang/String;
    .end local v12           #tracker:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;
    :catch_2
    move-exception v1

    goto/16 :goto_0
.end method
