.class public Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;
.super Ljava/lang/Object;
.source "CDMAPhoneNVInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$1;,
        Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;,
        Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;,
        Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;,
        Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;,
        Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;,
        Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    }
.end annotation


# static fields
.field private static final CDMA_START:I = 0x2000000

.field private static final LOCAL_LOGD:Z = false

.field public static final NV_TYPE_BOOL:I = 0x1

.field public static final NV_TYPE_BYTES:I = 0x3

.field public static final NV_TYPE_INT:I = 0x0

.field public static final NV_TYPE_STRING:I = 0x2

.field public static final OEM_RIL_GENERIC_FAILURE:I = 0x5

.field public static final OEM_RIL_NAM_ACCESS_COUNTER_EXCEEDED:I = 0x4

.field public static final OEM_RIL_NAM_PASSWORD_INCORRECT:I = 0x3

.field public static final OEM_RIL_NAM_READ_WRITE_FAILURE:I = 0x2

.field public static final OEM_RIL_RADIO_NOT_AVAILABLE:I = 0x1

.field private static final OEM_RIL_REQUEST_CDMA_GET_BP_APN:I = 0x2000018

.field private static final OEM_RIL_REQUEST_CDMA_GET_RDE_ITEM:I = 0x2000016

.field private static final OEM_RIL_REQUEST_CDMA_SET_BP_APN:I = 0x2000019

.field private static final OEM_RIL_REQUEST_CDMA_SET_RDE_ITEM:I = 0x2000015

.field public static final OEM_RIL_SUCCESS:I = 0x0

.field public static final OEM_RIL_WAITING_FOR_RESPONSE:I = -0x1

.field public static final OEM_RIL_WATCHDOG_TIMEOUT:I = 0x6

.field static final SIZE_OF_BYTE:I = 0x1

.field static final SIZE_OF_NV_ITEM:I = 0x64

.field private static final TAG:Ljava/lang/String; = "PhoneNVInfo"

.field private static mLock:[B = null

.field private static final sDefaultSpcCode:Ljava/lang/String; = "000000"

.field private static sInstance:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;


# instance fields
.field private final callbackRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;",
            ">;"
        }
    .end annotation
.end field

.field private mBoolResult:Z

.field private mBytesResult:[B

.field private mCurrentMessage:Landroid/os/Message;

.field private mDog:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;

.field private mIntResult:I

.field private final mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

.field private mNVType:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mReqId:I

.field private mStatus:I

.field private mStringResult:Ljava/lang/String;

.field private sLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->callbackRecords:Ljava/util/ArrayList;

    .line 62
    iput-object v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->sLooper:Landroid/os/Looper;

    .line 89
    const/4 v1, 0x0

    iput v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I

    .line 102
    iput-object v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mBytesResult:[B

    .line 458
    const-class v2, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    monitor-enter v2

    .line 459
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->sLooper:Landroid/os/Looper;

    if-nez v1, :cond_0

    .line 460
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PhoneNVInfo"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 461
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 463
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->sLooper:Landroid/os/Looper;

    .line 465
    .end local v0           #thread:Landroid/os/HandlerThread;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 467
    new-instance v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->sLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;-><init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    .line 468
    new-instance v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;

    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    invoke-direct {v1, v2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mDog:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;

    .line 469
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mDog:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 472
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_EPMA_SUPPORTED:I

    .line 474
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e004a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->RDE_NV_EHRPD_ENABLED:I

    .line 476
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e004b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->RDE_NV_HDRSCP_SESSION_STATUS_I:I

    .line 478
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_T1_TIMER:I

    .line 480
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0051

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_PCSCF_PORT:I

    .line 482
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_HOME_DOMAIN:I

    .line 484
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_PHONE_CONTEXT_URI:I

    .line 486
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_SIG_COMP:I

    .line 488
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_TF_TIMER:I

    .line 490
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_T2_TIMER:I

    .line 492
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_SMS_FORMAT:I

    .line 494
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_SMS_OVER_IP:I

    .line 496
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_MULTIMODE_SCAN_TIMER:I

    .line 498
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_CDMA_SCAN_TIMER:I

    .line 500
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_TEST_MODE:I

    .line 502
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_CDMA_AKEY_HASH:I

    .line 506
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IPV6_ENABLED:I

    .line 510
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e005b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_CDMA_ONLY_MODE_ENABLED:I

    .line 514
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ACTIVATION_DATE:I

    .line 517
    return-void

    .line 465
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic access$1002(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mBytesResult:[B

    return-object p1
.end method

.method static synthetic access$102(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I

    return p1
.end method

.method static synthetic access$200()[B
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mCurrentMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;)Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mDog:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mReqId:I

    return v0
.end method

.method static synthetic access$600(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mNVType:I

    return v0
.end method

.method static synthetic access$702(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIntResult:I

    return p1
.end method

.method static synthetic access$802(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mBoolResult:Z

    return p1
.end method

.method static synthetic access$902(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStringResult:Ljava/lang/String;

    return-object p1
.end method

.method public static declared-synchronized getInstance()Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;
    .locals 2

    .prologue
    .line 520
    const-class v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->sInstance:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    if-nez v0, :cond_0

    .line 521
    new-instance v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    invoke-direct {v0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;-><init>()V

    sput-object v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->sInstance:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    .line 524
    :cond_0
    sget-object v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->sInstance:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 520
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 1
    .parameter "data"
    .parameter "msg"

    .prologue
    .line 531
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I

    .line 532
    iput-object p2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mCurrentMessage:Landroid/os/Message;

    .line 534
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 535
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mDog:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;

    invoke-virtual {v0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;->watch()V

    .line 537
    return-void
.end method

.method private removeCallback(Landroid/os/IBinder;)V
    .locals 4
    .parameter "binder"

    .prologue
    .line 1010
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->callbackRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1011
    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->callbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1012
    .local v0, callbackCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1013
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->callbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;

    iget-object v2, v2, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;->binder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    .line 1014
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->callbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1015
    monitor-exit v3

    .line 1019
    :goto_1
    return-void

    .line 1012
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1018
    :cond_1
    monitor-exit v3

    goto :goto_1

    .end local v0           #callbackCount:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public declared-synchronized getModemAPN()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 816
    monitor-enter p0

    :try_start_0
    const-string v5, "PhoneNVInfo"

    const-string v6, "getModemAPN() start."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    const v6, 0x2000018

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 819
    .local v4, msg:Landroid/os/Message;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 821
    .local v2, commandlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "CDMAQAPNEFS "

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 822
    const-string v5, "AT+APNE?"

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 825
    .local v0, array_size:I
    new-array v1, v0, [Ljava/lang/String;

    .line 826
    .local v1, command:[Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 834
    const/4 v5, -0x1

    iput v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I

    .line 835
    iput-object v4, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mCurrentMessage:Landroid/os/Message;

    .line 837
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5, v1, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 838
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mDog:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;

    invoke-virtual {v5}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;->watch()V

    .line 840
    :goto_0
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v5, v7, :cond_0

    .line 842
    :try_start_1
    sget-object v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 843
    :try_start_2
    sget-object v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 844
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 845
    :catch_0
    move-exception v3

    .line 846
    .local v3, iex:Ljava/lang/InterruptedException;
    goto :goto_0

    .line 849
    .end local v3           #iex:Ljava/lang/InterruptedException;
    :cond_0
    :try_start_4
    const-string v5, "PhoneNVInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getModemAPN() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStringResult:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStringResult:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v5

    .line 816
    .end local v0           #array_size:I
    .end local v1           #command:[Ljava/lang/String;
    .end local v2           #commandlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #msg:Landroid/os/Message;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized getPhoneNVInfoBoolean(I)Z
    .locals 8
    .parameter "id"

    .prologue
    .line 653
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    const v6, 0x2000016

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 656
    .local v2, msg:Landroid/os/Message;
    const/4 v5, 0x1

    iput v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mNVType:I

    .line 657
    iput p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mReqId:I

    .line 658
    const/4 v1, 0x0

    .line 660
    .local v1, mValue:Z
    new-instance v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;-><init>()V

    .line 661
    .local v3, rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    iput p1, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->elementID:I

    .line 663
    new-instance v4, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;

    const v5, 0x2000016

    const-string v6, "000000"

    invoke-direct {v4, v3, v5, v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;-><init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;ILjava/lang/String;)V

    .line 666
    .local v4, req:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    invoke-virtual {v4}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->getBytes()[B

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 668
    :goto_0
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 670
    :try_start_1
    sget-object v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 671
    :try_start_2
    sget-object v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 672
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 673
    :catch_0
    move-exception v0

    .line 674
    .local v0, iex:Ljava/lang/InterruptedException;
    goto :goto_0

    .line 678
    .end local v0           #iex:Ljava/lang/InterruptedException;
    :cond_0
    :try_start_4
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I

    if-nez v5, :cond_1

    .line 679
    iget-boolean v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mBoolResult:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 685
    :cond_1
    monitor-exit p0

    return v1

    .line 653
    .end local v1           #mValue:Z
    .end local v2           #msg:Landroid/os/Message;
    .end local v3           #rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    .end local v4           #req:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized getPhoneNVInfoBytes(I)[B
    .locals 8
    .parameter "id"

    .prologue
    .line 541
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    const v6, 0x2000016

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 544
    .local v2, msg:Landroid/os/Message;
    const/4 v5, 0x3

    iput v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mNVType:I

    .line 545
    iput p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mReqId:I

    .line 546
    const/4 v1, 0x0

    .line 548
    .local v1, mValue:[B
    new-instance v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;-><init>()V

    .line 549
    .local v3, rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    iput p1, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->elementID:I

    .line 551
    new-instance v4, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;

    const v5, 0x2000016

    const-string v6, "000000"

    invoke-direct {v4, v3, v5, v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;-><init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;ILjava/lang/String;)V

    .line 554
    .local v4, req:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    invoke-virtual {v4}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->getBytes()[B

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 556
    :goto_0
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 558
    :try_start_1
    sget-object v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 559
    :try_start_2
    sget-object v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 560
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 561
    :catch_0
    move-exception v0

    .line 562
    .local v0, iex:Ljava/lang/InterruptedException;
    goto :goto_0

    .line 566
    .end local v0           #iex:Ljava/lang/InterruptedException;
    :cond_0
    :try_start_4
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I

    if-nez v5, :cond_1

    .line 567
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mBytesResult:[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 570
    :cond_1
    monitor-exit p0

    return-object v1

    .line 541
    .end local v1           #mValue:[B
    .end local v2           #msg:Landroid/os/Message;
    .end local v3           #rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    .end local v4           #req:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized getPhoneNVInfoInt(I)I
    .locals 8
    .parameter "id"

    .prologue
    .line 575
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    const v6, 0x2000016

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 578
    .local v2, msg:Landroid/os/Message;
    const/4 v5, 0x0

    iput v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mNVType:I

    .line 579
    iput p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mReqId:I

    .line 580
    const/4 v1, -0x1

    .line 582
    .local v1, mValue:I
    new-instance v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;-><init>()V

    .line 583
    .local v3, rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    iput p1, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->elementID:I

    .line 585
    new-instance v4, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;

    const v5, 0x2000016

    const-string v6, "000000"

    invoke-direct {v4, v3, v5, v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;-><init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;ILjava/lang/String;)V

    .line 588
    .local v4, req:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    invoke-virtual {v4}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->getBytes()[B

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 590
    :goto_0
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 592
    :try_start_1
    sget-object v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 593
    :try_start_2
    sget-object v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 594
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 595
    :catch_0
    move-exception v0

    .line 596
    .local v0, iex:Ljava/lang/InterruptedException;
    goto :goto_0

    .line 600
    .end local v0           #iex:Ljava/lang/InterruptedException;
    :cond_0
    :try_start_4
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I

    if-nez v5, :cond_1

    .line 601
    iget v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIntResult:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 604
    :cond_1
    monitor-exit p0

    return v1

    .line 575
    .end local v1           #mValue:I
    .end local v2           #msg:Landroid/os/Message;
    .end local v3           #rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    .end local v4           #req:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized getPhoneNVInfoString(I)Ljava/lang/String;
    .locals 8
    .parameter "id"

    .prologue
    .line 720
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    const v6, 0x2000016

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 723
    .local v2, msg:Landroid/os/Message;
    const/4 v5, 0x2

    iput v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mNVType:I

    .line 724
    iput p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mReqId:I

    .line 725
    const/4 v1, 0x0

    .line 727
    .local v1, mValue:Ljava/lang/String;
    new-instance v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;-><init>()V

    .line 728
    .local v3, rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    iput p1, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->elementID:I

    .line 730
    new-instance v4, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;

    const v5, 0x2000016

    const-string v6, "000000"

    invoke-direct {v4, v3, v5, v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;-><init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;ILjava/lang/String;)V

    .line 733
    .local v4, req:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    invoke-virtual {v4}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->getBytes()[B

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 735
    :goto_0
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 737
    :try_start_1
    sget-object v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 738
    :try_start_2
    sget-object v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 739
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 740
    :catch_0
    move-exception v0

    .line 741
    .local v0, iex:Ljava/lang/InterruptedException;
    goto :goto_0

    .line 745
    .end local v0           #iex:Ljava/lang/InterruptedException;
    :cond_0
    :try_start_4
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I

    if-nez v5, :cond_1

    .line 746
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStringResult:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 749
    :cond_1
    monitor-exit p0

    return-object v1

    .line 720
    .end local v1           #mValue:Ljava/lang/String;
    .end local v2           #msg:Landroid/os/Message;
    .end local v3           #rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    .end local v4           #req:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public registerObserver(Lcom/motorola/android/telephony/IPhoneNVInfoObserver;)V
    .locals 7
    .parameter "cb"

    .prologue
    .line 786
    iget-object v6, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->callbackRecords:Ljava/util/ArrayList;

    monitor-enter v6

    .line 787
    const/4 v3, 0x0

    .line 790
    .local v3, r:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    :try_start_0
    invoke-interface {p1}, Lcom/motorola/android/telephony/IPhoneNVInfoObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 791
    .local v1, b:Landroid/os/IBinder;
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->callbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 792
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    move-object v4, v3

    .end local v3           #r:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    .local v4, r:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    :goto_0
    if-ge v2, v0, :cond_1

    .line 793
    :try_start_1
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->callbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 794
    .end local v4           #r:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    .restart local v3       #r:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    :try_start_2
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;->binder:Landroid/os/IBinder;

    if-ne v1, v5, :cond_0

    .line 807
    :goto_1
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 808
    return-void

    .line 792
    :cond_0
    add-int/lit8 v2, v2, 0x1

    move-object v4, v3

    .end local v3           #r:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    .restart local v4       #r:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    goto :goto_0

    .line 800
    :cond_1
    :try_start_3
    new-instance v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;-><init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 801
    .end local v4           #r:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    .restart local v3       #r:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    :try_start_4
    iput-object v1, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;->binder:Landroid/os/IBinder;

    .line 802
    iput-object p1, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;->callback:Lcom/motorola/android/telephony/IPhoneNVInfoObserver;

    .line 803
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->callbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 807
    .end local v0           #N:I
    .end local v1           #b:Landroid/os/IBinder;
    .end local v2           #i:I
    :catchall_0
    move-exception v5

    :goto_2
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .end local v3           #r:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    .restart local v0       #N:I
    .restart local v1       #b:Landroid/os/IBinder;
    .restart local v2       #i:I
    .restart local v4       #r:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #r:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    .restart local v3       #r:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    goto :goto_2
.end method

.method public declared-synchronized setModemAPN(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "apn_str"

    .prologue
    const/4 v8, -0x1

    .line 854
    monitor-enter p0

    :try_start_0
    const-string v5, "PhoneNVInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setModemAPN() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    const v6, 0x2000019

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 857
    .local v4, msg:Landroid/os/Message;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 859
    .local v2, commandlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "CDMAEDITAPN "

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 860
    const-string v5, "AT+APNE="

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 861
    if-eqz p1, :cond_0

    .line 862
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 865
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 866
    .local v0, array_size:I
    new-array v1, v0, [Ljava/lang/String;

    .line 867
    .local v1, command:[Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 875
    const/4 v5, -0x1

    iput v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I

    .line 876
    iput-object v4, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mCurrentMessage:Landroid/os/Message;

    .line 878
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5, v1, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 879
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mDog:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;

    invoke-virtual {v5}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;->watch()V

    .line 881
    :goto_0
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v5, v8, :cond_1

    .line 883
    :try_start_1
    sget-object v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 884
    :try_start_2
    sget-object v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 885
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 886
    :catch_0
    move-exception v3

    .line 887
    .local v3, iex:Ljava/lang/InterruptedException;
    goto :goto_0

    .line 891
    .end local v3           #iex:Ljava/lang/InterruptedException;
    :cond_1
    :try_start_4
    const-string v5, "PhoneNVInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setModemAPN() End: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStringResult:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v5

    .line 854
    .end local v0           #array_size:I
    .end local v1           #command:[Ljava/lang/String;
    .end local v2           #commandlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #msg:Landroid/os/Message;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized setPhoneNVInfo(II)I
    .locals 11
    .parameter "id"
    .parameter "value"

    .prologue
    .line 608
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    const v9, 0x2000015

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 613
    .local v3, msg:Landroid/os/Message;
    iget-object v9, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->callbackRecords:Ljava/util/ArrayList;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 614
    :try_start_1
    iget-object v8, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->callbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 615
    iget-object v8, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->callbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 617
    .local v5, r:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    :try_start_2
    iget-object v8, v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;->callback:Lcom/motorola/android/telephony/IPhoneNVInfoObserver;

    invoke-interface {v8, p1}, Lcom/motorola/android/telephony/IPhoneNVInfoObserver;->valueChanged(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 614
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 618
    :catch_0
    move-exception v0

    .line 620
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_3
    iget-object v8, v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;->callback:Lcom/motorola/android/telephony/IPhoneNVInfoObserver;

    invoke-interface {v8}, Lcom/motorola/android/telephony/IPhoneNVInfoObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->removeCallback(Landroid/os/IBinder;)V

    goto :goto_1

    .line 623
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v5           #r:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 608
    .end local v3           #msg:Landroid/os/Message;
    :catchall_1
    move-exception v8

    monitor-exit p0

    throw v8

    .line 623
    .restart local v1       #i:I
    .restart local v3       #msg:Landroid/os/Message;
    :cond_0
    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 625
    const/4 v8, 0x0

    :try_start_6
    iput v8, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mNVType:I

    .line 626
    iput p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mReqId:I

    .line 628
    new-instance v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    invoke-direct {v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;-><init>()V

    .line 629
    .local v6, rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    iput p1, v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->elementID:I

    .line 631
    new-instance v4, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;-><init>(Ljava/lang/Integer;)V

    .line 632
    .local v4, obj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;
    iput-object v4, v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    .line 634
    new-instance v7, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;

    const v8, 0x2000015

    const-string v9, "000000"

    invoke-direct {v7, v6, v8, v9}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;-><init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;ILjava/lang/String;)V

    .line 637
    .local v7, req:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    invoke-virtual {v7}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->getBytes()[B

    move-result-object v8

    invoke-direct {p0, v8, v3}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 639
    :goto_2
    iget v8, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    .line 641
    :try_start_7
    sget-object v9, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    monitor-enter v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1

    .line 642
    :try_start_8
    sget-object v8, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V

    .line 643
    monitor-exit v9

    goto :goto_2

    :catchall_2
    move-exception v8

    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_1

    .line 644
    :catch_1
    move-exception v2

    .line 645
    .local v2, iex:Ljava/lang/InterruptedException;
    goto :goto_2

    .line 649
    .end local v2           #iex:Ljava/lang/InterruptedException;
    :cond_1
    :try_start_a
    iget v8, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    monitor-exit p0

    return v8
.end method

.method public declared-synchronized setPhoneNVInfo(ILjava/lang/String;)I
    .locals 8
    .parameter "id"
    .parameter "value"

    .prologue
    .line 753
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    const v6, 0x2000015

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 756
    .local v1, msg:Landroid/os/Message;
    const/4 v5, 0x2

    iput v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mNVType:I

    .line 757
    iput p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mReqId:I

    .line 759
    new-instance v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;-><init>()V

    .line 760
    .local v3, rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    iput p1, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->elementID:I

    .line 762
    new-instance v2, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-direct {v2, p2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;-><init>(Ljava/lang/String;)V

    .line 763
    .local v2, obj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    .line 765
    new-instance v4, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;

    const v5, 0x2000015

    const-string v6, "000000"

    invoke-direct {v4, v3, v5, v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;-><init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;ILjava/lang/String;)V

    .line 768
    .local v4, req:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    invoke-virtual {v4}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->getBytes()[B

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 770
    :goto_0
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 772
    :try_start_1
    sget-object v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 773
    :try_start_2
    sget-object v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 774
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 775
    :catch_0
    move-exception v0

    .line 776
    .local v0, iex:Ljava/lang/InterruptedException;
    goto :goto_0

    .line 779
    .end local v0           #iex:Ljava/lang/InterruptedException;
    :cond_0
    :try_start_4
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return v5

    .line 753
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #obj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;
    .end local v3           #rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    .end local v4           #req:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized setPhoneNVInfo(IZ)I
    .locals 8
    .parameter "id"
    .parameter "value"

    .prologue
    .line 689
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    const v6, 0x2000015

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 692
    .local v1, msg:Landroid/os/Message;
    const/4 v5, 0x1

    iput v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mNVType:I

    .line 693
    iput p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mReqId:I

    .line 695
    new-instance v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;-><init>()V

    .line 696
    .local v3, rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    iput p1, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->elementID:I

    .line 698
    new-instance v2, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-direct {v2, p2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;-><init>(Z)V

    .line 699
    .local v2, obj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    .line 701
    new-instance v4, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;

    const v5, 0x2000015

    const-string v6, "000000"

    invoke-direct {v4, v3, v5, v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;-><init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;ILjava/lang/String;)V

    .line 704
    .local v4, req:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    invoke-virtual {v4}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->getBytes()[B

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 706
    :goto_0
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 708
    :try_start_1
    sget-object v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 709
    :try_start_2
    sget-object v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 710
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 711
    :catch_0
    move-exception v0

    .line 712
    .local v0, iex:Ljava/lang/InterruptedException;
    goto :goto_0

    .line 716
    .end local v0           #iex:Ljava/lang/InterruptedException;
    :cond_0
    :try_start_4
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return v5

    .line 689
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #obj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;
    .end local v3           #rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    .end local v4           #req:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public unregisterObserver(Lcom/motorola/android/telephony/IPhoneNVInfoObserver;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 812
    invoke-interface {p1}, Lcom/motorola/android/telephony/IPhoneNVInfoObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->removeCallback(Landroid/os/IBinder;)V

    .line 813
    return-void
.end method
