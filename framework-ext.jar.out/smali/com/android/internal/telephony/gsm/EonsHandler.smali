.class public Lcom/android/internal/telephony/gsm/EonsHandler;
.super Landroid/os/Handler;
.source "EonsHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;
    }
.end annotation


# static fields
.field private static final EONS_DISABLED:I = 0x0

.field private static final EONS_UNKNOWN:I = -0x1

.field private static final EVENT_GET_ALL_OPL_RECORDS_DONE:I = 0x5

.field private static final EVENT_GET_ALL_PNN_RECORDS_DONE:I = 0x6

.field private static final EVENT_GET_SST_DONE:I = 0x4

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x2

.field private static final EVENT_SIM_READY:I = 0x1

.field private static final EVENT_SIM_REFRESH:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static final ONLY_PNN_ENABLED:I = 0x2

.field private static final PNN_OPL_ENABLED:I = 0x1

.field static final RAT_2G:Ljava/lang/String; = " 2G"

.field static final RAT_3G:Ljava/lang/String; = " 3G"

.field private static final TAG:Ljava/lang/String; = "EONS"

.field static localLOGV:Z

.field private static mEonsLoadedRegistrant:Landroid/os/Registrant;


# instance fields
.field mEONSFeatureOn:Z

.field mEONSUpdatedPLMN:Z

.field mOPLLoadFailed:Z

.field private mOPLPNNName:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

.field mPNNLoadFailed:Z

.field private mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field private oplCache:Ljava/util/ArrayList;

.field private pnnCache:Ljava/util/ArrayList;

.field private sstPlmnOplValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/gsm/EonsHandler;->localLOGV:Z

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 3
    .parameter "phone"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 51
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mEONSFeatureOn:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mEONSUpdatedPLMN:Z

    .line 101
    new-instance v0, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;-><init>(Lcom/android/internal/telephony/gsm/EonsHandler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLPNNName:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    .line 109
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/IccCard;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 116
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mEONSFeatureOn:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEONSFeatureOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mEONSFeatureOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/EonsHandler;->onRadioOffOrNotAvailable()V

    .line 122
    return-void

    .line 118
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private isEONSDataLoadingDone()Z
    .locals 2

    .prologue
    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isEONSDataLoadingDone: mPNNLoadFailed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPNNLoadFailed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOPLLoadFailed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLLoadFailed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",oplCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->oplCache:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pnnCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->pnnCache:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->oplCache:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->pnnCache:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPNNLoadFailed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLLoadFailed:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyEonsLoaded()V
    .locals 1

    .prologue
    .line 585
    const-string v0, "notifyEonsLoaded Enter"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 586
    sget-object v0, Lcom/android/internal/telephony/gsm/EonsHandler;->mEonsLoadedRegistrant:Landroid/os/Registrant;

    if-nez v0, :cond_1

    .line 587
    const-string v0, "notifyEonsLoaded mEonsLoadedRegistrant == null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 594
    :cond_0
    :goto_0
    return-void

    .line 590
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 591
    const-string v0, "notifyEonsLoaded in service, notify"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 592
    sget-object v0, Lcom/android/internal/telephony/gsm/EonsHandler;->mEonsLoadedRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    goto :goto_0
.end method

.method static setEonsLoadedRegistrant(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 139
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p0, p1, p2}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    sput-object v0, Lcom/android/internal/telephony/gsm/EonsHandler;->mEonsLoadedRegistrant:Landroid/os/Registrant;

    .line 140
    return-void
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 5
    .parameter "servicestate"

    .prologue
    const/4 v4, 0x1

    .line 282
    const/4 v0, 0x0

    .line 283
    .local v0, longname:Ljava/lang/String;
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mEONSUpdatedPLMN:Z

    .line 284
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/EonsHandler;->isNeedToWaitEONSName()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 285
    const-string v3, "updateServiceState: data not loaded, no longname till data loaded"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 298
    :goto_0
    const/4 v2, 0x0

    .line 299
    .local v2, shortname:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/EonsHandler;->isNeedToWaitEONSName()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 300
    const-string v3, "updateServiceState: data not loaded, no shortname till data loaded"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 314
    :goto_1
    const/4 v1, 0x0

    .line 315
    .local v1, numeric:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/EonsHandler;->isNeedToWaitEONSName()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 316
    const-string v3, "updateServiceState: data not loaded, no numeric till data loaded"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 320
    :goto_2
    invoke-virtual {p1, v0, v2, v1}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateServiceState: servicestate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 322
    return-void

    .line 287
    .end local v1           #numeric:Ljava/lang/String;
    .end local v2           #shortname:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLPNNName:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->longName:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLPNNName:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->longName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 288
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLPNNName:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    iget-object v0, v3, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->longName:Ljava/lang/String;

    .line 289
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mEONSUpdatedPLMN:Z

    goto :goto_0

    .line 290
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 292
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 294
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 302
    .restart local v2       #shortname:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLPNNName:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->shortName:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLPNNName:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->shortName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 304
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLPNNName:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    iget-object v2, v3, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->shortName:Ljava/lang/String;

    .line 305
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mEONSUpdatedPLMN:Z

    goto :goto_1

    .line 306
    :cond_4
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 308
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 310
    :cond_5
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    goto/16 :goto_1

    .line 318
    .restart local v1       #numeric:Ljava/lang/String;
    :cond_6
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2
.end method


# virtual methods
.method getEONSName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLPNNName:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->longName:Ljava/lang/String;

    return-object v0
.end method

.method getNameFromPnnRecord(I)Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;
    .locals 9
    .parameter "record"

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 399
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNameFromPnnRecord: record="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 400
    new-instance v4, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;-><init>(Lcom/android/internal/telephony/gsm/EonsHandler;)V

    .line 401
    .local v4, ret:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->pnnCache:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    if-ge p1, v8, :cond_1

    .line 402
    :cond_0
    const-string v5, "getNameFromPnnRecord: invalid record/pnnCache"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/EonsHandler;->loge(Ljava/lang/String;)V

    .line 434
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNameFromPnnRecord: ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 435
    return-object v4

    .line 404
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNameFromPnnRecord: pnnCache.size()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->pnnCache:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 406
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->pnnCache:Ljava/util/ArrayList;

    add-int/lit8 v6, p1, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v1, v0

    .line 407
    .local v1, data:[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PNN record[ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 411
    const/4 v5, 0x0

    aget-byte v5, v1, v5

    if-eq v5, v7, :cond_3

    const/4 v5, 0x1

    aget-byte v5, v1, v5

    if-eq v5, v7, :cond_3

    .line 413
    const/4 v5, 0x1

    aget-byte v3, v1, v5

    .line 414
    .local v3, length:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNameFromPnnRecord: longname length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 415
    const/4 v5, 0x2

    invoke-static {v1, v5, v3}, Lcom/android/internal/telephony/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->longName:Ljava/lang/String;

    .line 416
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNameFromPnnRecord: longname="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->longName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 417
    add-int/lit8 v5, v3, 0x2

    aget-byte v5, v1, v5

    if-eq v5, v7, :cond_2

    add-int/lit8 v5, v3, 0x3

    aget-byte v5, v1, v5

    if-eq v5, v7, :cond_2

    .line 418
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNameFromPnnRecord: shortname length : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x3

    aget-byte v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 419
    add-int/lit8 v5, v3, 0x4

    add-int/lit8 v6, v3, 0x3

    aget-byte v6, v1, v6

    invoke-static {v1, v5, v6}, Lcom/android/internal/telephony/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->shortName:Ljava/lang/String;

    .line 421
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNameFromPnnRecord: shortname="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->shortName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 430
    .end local v1           #data:[B
    .end local v3           #length:I
    :catch_0
    move-exception v2

    .line 431
    .local v2, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNameFromPnnRecord: Exception while processing PNN data "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/EonsHandler;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 424
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #data:[B
    .restart local v3       #length:I
    :cond_2
    :try_start_1
    const-string v5, "getNameFromPnnRecord: no short name"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 428
    .end local v3           #length:I
    :cond_3
    const-string v5, "getNameFromPnnRecord: invalid EF_PNN Data"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/EonsHandler;->loge(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 191
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 256
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown msg.what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/EonsHandler;->loge(Ljava/lang/String;)V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 193
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/EonsHandler;->isEONSFeatureOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v2

    const/16 v3, 0x6f38

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 196
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v2

    const/16 v3, 0x6fc6

    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 198
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v2

    const/16 v3, 0x6fc5

    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    goto :goto_0

    .line 203
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/EonsHandler;->onRadioOffOrNotAvailable()V

    goto :goto_0

    .line 206
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 207
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v1, v2

    check-cast v1, [B

    .line 209
    .local v1, data:[B
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    .line 211
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 212
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/EonsHandler;->handleSstData([B)V

    .line 218
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/EonsHandler;->notifyEonsLoaded()V

    goto :goto_0

    .line 222
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #data:[B
    :pswitch_4
    const-string v2, "OPL loaded"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 223
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 224
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in fetching OPL Records "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/EonsHandler;->loge(Ljava/lang/String;)V

    .line 226
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->oplCache:Ljava/util/ArrayList;

    .line 227
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLLoadFailed:Z

    goto :goto_0

    .line 230
    :cond_2
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->oplCache:Ljava/util/ArrayList;

    .line 235
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/EonsHandler;->notifyEonsLoaded()V

    goto/16 :goto_0

    .line 239
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    const-string v2, "PNN loaded"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 240
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 241
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_3

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in fetching PNN Records "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/EonsHandler;->loge(Ljava/lang/String;)V

    .line 243
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->pnnCache:Ljava/util/ArrayList;

    .line 244
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPNNLoadFailed:Z

    goto/16 :goto_0

    .line 247
    :cond_3
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->pnnCache:Ljava/util/ArrayList;

    .line 252
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/EonsHandler;->notifyEonsLoaded()V

    goto/16 :goto_0

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method handleSimRefresh(Lcom/android/internal/telephony/IccRefreshResponse;)V
    .locals 5
    .parameter "refreshResponse"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 143
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/EonsHandler;->isEONSFeatureOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    :goto_0
    :pswitch_0
    return-void

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSimRefresh: result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/internal/telephony/IccRefreshResponse;->refreshResult:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSimRefresh: efId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/internal/telephony/IccRefreshResponse;->efId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 149
    iget v0, p1, Lcom/android/internal/telephony/IccRefreshResponse;->refreshResult:I

    packed-switch v0, :pswitch_data_0

    .line 183
    const-string v0, "handleSimRefresh: unknown operation"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/EonsHandler;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :pswitch_1
    iget v0, p1, Lcom/android/internal/telephony/IccRefreshResponse;->efId:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 153
    :sswitch_0
    iput v4, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f38

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto :goto_0

    .line 158
    :sswitch_1
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->pnnCache:Ljava/util/ArrayList;

    .line 159
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPNNLoadFailed:Z

    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6fc5

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    goto :goto_0

    .line 164
    :sswitch_2
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->oplCache:Ljava/util/ArrayList;

    .line 165
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLLoadFailed:Z

    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6fc6

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    goto :goto_0

    .line 172
    :pswitch_2
    new-instance v0, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;-><init>(Lcom/android/internal/telephony/gsm/EonsHandler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLPNNName:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    .line 173
    iput v4, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    .line 174
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->oplCache:Ljava/util/ArrayList;

    .line 175
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->pnnCache:Ljava/util/ArrayList;

    .line 176
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLLoadFailed:Z

    .line 177
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPNNLoadFailed:Z

    .line 178
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 151
    :sswitch_data_0
    .sparse-switch
        0x6f38 -> :sswitch_0
        0x6fc5 -> :sswitch_1
        0x6fc6 -> :sswitch_2
    .end sparse-switch
.end method

.method handleSstData([B)V
    .locals 5
    .parameter "data"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSstData data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 480
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 485
    const/16 v1, 0xc

    aget-byte v1, p1, v1

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    iput v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    .line 486
    iget v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_2

    .line 487
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    .line 491
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSstData: 2G Sim sstPlmnOplValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSstData: sstPlmnOplValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 510
    return-void

    .line 488
    :cond_2
    :try_start_1
    iget v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    if-ne v1, v4, :cond_0

    .line 489
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 506
    :catch_0
    move-exception v0

    .line 507
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSstData: Exception in processing SST Data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/EonsHandler;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 492
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 498
    const/4 v1, 0x5

    aget-byte v1, p1, v1

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    .line 499
    iget v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    if-ne v1, v4, :cond_5

    .line 500
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    .line 504
    :cond_4
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSstData: 3G Sim sstPlmnOplValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 501
    :cond_5
    iget v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    if-ne v1, v3, :cond_4

    .line 502
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method isEONSEnabledOnSIM()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 556
    iget v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isEONSFeatureOn()Z
    .locals 1

    .prologue
    .line 561
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mEONSFeatureOn:Z

    return v0
.end method

.method isEONSUpdatedPLMN()Z
    .locals 1

    .prologue
    .line 576
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mEONSUpdatedPLMN:Z

    return v0
.end method

.method isNeedToWaitEONSName()Z
    .locals 2

    .prologue
    .line 571
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/EonsHandler;->isEONSFeatureOn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/EonsHandler;->isEONSEnabledOnSIM()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/EonsHandler;->isEONSDataLoadingDone()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 598
    sget-boolean v0, Lcom/android/internal/telephony/gsm/EonsHandler;->localLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EONS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_0
    return-void
.end method

.method loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 602
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EONS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    return-void
.end method

.method lookupEONSName(Ljava/lang/String;IZ)Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;
    .locals 15
    .parameter "operatorNumeric"
    .parameter "lac"
    .parameter "need2MatchLAC"

    .prologue
    .line 325
    new-instance v10, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    invoke-direct {v10, p0}, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;-><init>(Lcom/android/internal/telephony/gsm/EonsHandler;)V

    .line 326
    .local v10, ret:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "lookupEONSName: operatorNumeric="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", lac="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", need2MatchLAC="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 328
    iget-object v13, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->oplCache:Ljava/util/ArrayList;

    if-eqz v13, :cond_a

    iget-object v13, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->pnnCache:Ljava/util/ArrayList;

    if-eqz v13, :cond_a

    .line 329
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_1

    .line 330
    :cond_0
    const-string v13, "lookupEONSName: operatorNumeric is null or empty."

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/gsm/EonsHandler;->loge(Ljava/lang/String;)V

    move-object v11, v10

    .line 395
    .end local v10           #ret:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;
    .local v11, ret:Ljava/lang/Object;
    :goto_0
    return-object v11

    .line 333
    .end local v11           #ret:Ljava/lang/Object;
    .restart local v10       #ret:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;
    :cond_1
    if-eqz p3, :cond_2

    const/4 v13, -0x1

    move/from16 v0, p2

    if-ne v0, v13, :cond_2

    .line 334
    const-string v13, "lookupEONSName: invalid lac"

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/gsm/EonsHandler;->loge(Ljava/lang/String;)V

    move-object v11, v10

    .line 335
    .restart local v11       #ret:Ljava/lang/Object;
    goto :goto_0

    .line 338
    .end local v11           #ret:Ljava/lang/Object;
    :cond_2
    const/4 v13, 0x6

    new-array v12, v13, [I

    fill-array-data v12, :array_0

    .line 339
    .local v12, simPlmn:[I
    const/4 v13, 0x6

    new-array v1, v13, [I

    fill-array-data v1, :array_1

    .line 341
    .local v1, bcchPlmn:[I
    iget-object v13, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->oplCache:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 342
    .local v2, count:I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "lookupEONSName: oplCache.size="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 345
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v2, :cond_5

    .line 346
    :try_start_0
    iget-object v13, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->oplCache:Ljava/util/ArrayList;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    move-object v0, v13

    check-cast v0, [B

    move-object v3, v0

    .line 347
    .local v3, data:[B
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "lookupEONSName: oplCache["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 350
    const/4 v13, 0x0

    const/4 v14, 0x0

    aget-byte v14, v3, v14

    and-int/lit8 v14, v14, 0xf

    aput v14, v12, v13

    .line 351
    const/4 v13, 0x1

    const/4 v14, 0x0

    aget-byte v14, v3, v14

    shr-int/lit8 v14, v14, 0x4

    and-int/lit8 v14, v14, 0xf

    aput v14, v12, v13

    .line 352
    const/4 v13, 0x2

    const/4 v14, 0x1

    aget-byte v14, v3, v14

    and-int/lit8 v14, v14, 0xf

    aput v14, v12, v13

    .line 353
    const/4 v13, 0x3

    const/4 v14, 0x2

    aget-byte v14, v3, v14

    and-int/lit8 v14, v14, 0xf

    aput v14, v12, v13

    .line 354
    const/4 v13, 0x4

    const/4 v14, 0x2

    aget-byte v14, v3, v14

    shr-int/lit8 v14, v14, 0x4

    and-int/lit8 v14, v14, 0xf

    aput v14, v12, v13

    .line 355
    const/4 v13, 0x5

    const/4 v14, 0x1

    aget-byte v14, v3, v14

    shr-int/lit8 v14, v14, 0x4

    and-int/lit8 v14, v14, 0xf

    aput v14, v12, v13

    .line 358
    const/4 v6, 0x0

    .local v6, ind1:I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v6, v13, :cond_3

    .line 359
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v13

    add-int/lit8 v13, v13, -0x30

    aput v13, v1, v6

    .line 358
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 363
    :cond_3
    const/4 v13, 0x3

    aget-byte v13, v3, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    const/4 v14, 0x4

    aget-byte v14, v3, v14

    and-int/lit16 v14, v14, 0xff

    or-int v7, v13, v14

    .line 364
    .local v7, oplDataLac1:I
    const/4 v13, 0x5

    aget-byte v13, v3, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    const/4 v14, 0x6

    aget-byte v14, v3, v14

    and-int/lit16 v14, v14, 0xff

    or-int v8, v13, v14

    .line 365
    .local v8, oplDataLac2:I
    const/4 v13, 0x7

    aget-byte v13, v3, v13

    and-int/lit16 v13, v13, 0xff

    int-to-short v9, v13

    .line 366
    .local v9, oplDataPnnNum:S
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "lookupEONSName: lac1="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", lac2="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", lac="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", pnn rec num="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 370
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {p0, v12, v1, v13}, Lcom/android/internal/telephony/gsm/EonsHandler;->matchSimPlmn([I[II)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 372
    if-eqz p3, :cond_4

    move/from16 v0, p2

    if-gt v7, v0, :cond_9

    move/from16 v0, p2

    if-gt v0, v8, :cond_9

    .line 373
    :cond_4
    const-string v13, "lookupEONSName: lac in range"

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 374
    if-lez v9, :cond_6

    const/16 v13, 0xff

    if-ge v9, v13, :cond_6

    .line 376
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/EonsHandler;->getNameFromPnnRecord(I)Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    move-result-object v10

    .end local v1           #bcchPlmn:[I
    .end local v2           #count:I
    .end local v3           #data:[B
    .end local v5           #i:I
    .end local v6           #ind1:I
    .end local v7           #oplDataLac1:I
    .end local v8           #oplDataLac2:I
    .end local v9           #oplDataPnnNum:S
    .end local v12           #simPlmn:[I
    :cond_5
    :goto_3
    move-object v11, v10

    .line 395
    .restart local v11       #ret:Ljava/lang/Object;
    goto/16 :goto_0

    .line 378
    .end local v11           #ret:Ljava/lang/Object;
    .restart local v1       #bcchPlmn:[I
    .restart local v2       #count:I
    .restart local v3       #data:[B
    .restart local v5       #i:I
    .restart local v6       #ind1:I
    .restart local v7       #oplDataLac1:I
    .restart local v8       #oplDataLac2:I
    .restart local v9       #oplDataPnnNum:S
    .restart local v12       #simPlmn:[I
    :cond_6
    if-nez v9, :cond_7

    .line 379
    const-string v13, "lookupEONSName: pnn rec num is 0"

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 389
    .end local v3           #data:[B
    .end local v6           #ind1:I
    .end local v7           #oplDataLac1:I
    .end local v8           #oplDataLac2:I
    .end local v9           #oplDataPnnNum:S
    :catch_0
    move-exception v4

    .line 390
    .local v4, e:Ljava/lang/Exception;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "lookupEONSName: Exception while processing OPL data "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/gsm/EonsHandler;->loge(Ljava/lang/String;)V

    goto :goto_3

    .line 382
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v3       #data:[B
    .restart local v6       #ind1:I
    .restart local v7       #oplDataLac1:I
    .restart local v8       #oplDataLac2:I
    .restart local v9       #oplDataPnnNum:S
    :cond_7
    :try_start_1
    const-string v13, "lookupEONSName: invalid pnn rec num"

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 345
    :cond_8
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 385
    :cond_9
    const-string v13, "lookupEONSName: hLac not in range"

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 393
    .end local v1           #bcchPlmn:[I
    .end local v2           #count:I
    .end local v3           #data:[B
    .end local v5           #i:I
    .end local v6           #ind1:I
    .end local v7           #oplDataLac1:I
    .end local v8           #oplDataLac2:I
    .end local v9           #oplDataPnnNum:S
    .end local v12           #simPlmn:[I
    :cond_a
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "lookupEONSName: can not lookup, oplCache="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->oplCache:Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", pnnCache="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->pnnCache:Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/gsm/EonsHandler;->loge(Ljava/lang/String;)V

    goto :goto_3

    .line 338
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 339
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method matchSimPlmn([I[II)Z
    .locals 10
    .parameter "simPlmn"
    .parameter "bcchPlmn"
    .parameter "length"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v3, 0x1

    const/4 v7, 0x5

    const/4 v4, 0x0

    .line 439
    const-string v5, "Enter matchSimPlmn"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 440
    const/16 v2, 0xd

    .line 441
    .local v2, wildCardDigit:I
    const/4 v1, 0x0

    .line 442
    .local v1, match:Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "matchSimPlmn: simPlmn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", bcchPlmn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 445
    aget v5, p1, v7

    const/16 v6, 0xf

    if-ne v5, v6, :cond_0

    .line 446
    aput v4, p1, v7

    .line 451
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 452
    aget v5, p1, v0

    if-ne v5, v2, :cond_1

    .line 453
    aget v5, p2, v0

    aput v5, p1, v0

    .line 451
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 458
    :cond_2
    aget v5, p1, v4

    aget v6, p2, v4

    if-ne v5, v6, :cond_3

    aget v5, p1, v3

    aget v6, p2, v3

    if-ne v5, v6, :cond_3

    const/4 v5, 0x2

    aget v5, p1, v5

    const/4 v6, 0x2

    aget v6, p2, v6

    if-ne v5, v6, :cond_3

    .line 461
    if-ne p3, v7, :cond_5

    .line 464
    aget v5, p1, v8

    aget v6, p2, v8

    if-ne v5, v6, :cond_4

    aget v5, p1, v9

    aget v6, p2, v9

    if-ne v5, v6, :cond_4

    move v1, v3

    .line 473
    :cond_3
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Leave matchSimPlmn match="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 474
    return v1

    :cond_4
    move v1, v4

    .line 464
    goto :goto_1

    .line 468
    :cond_5
    aget v5, p1, v8

    aget v6, p2, v8

    if-ne v5, v6, :cond_6

    aget v5, p1, v9

    aget v6, p2, v9

    if-ne v5, v6, :cond_6

    aget v5, p1, v7

    aget v6, p2, v7

    if-ne v5, v6, :cond_6

    move v1, v3

    :goto_2
    goto :goto_1

    :cond_6
    move v1, v4

    goto :goto_2
.end method

.method protected onRadioOffOrNotAvailable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    .line 126
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->oplCache:Ljava/util/ArrayList;

    .line 127
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->pnnCache:Ljava/util/ArrayList;

    .line 128
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLLoadFailed:Z

    .line 129
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPNNLoadFailed:Z

    .line 130
    return-void
.end method

.method unregister()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccCard;->unregisterForReady(Landroid/os/Handler;)V

    .line 136
    :cond_0
    return-void
.end method

.method public updateAvailableNetworksWithEONS(Ljava/util/ArrayList;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 517
    .local p1, operators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/EonsHandler;->isEONSEnabledOnSIM()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 518
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_7

    .line 519
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/OperatorInfo;

    .line 520
    .local v4, operator:Lcom/android/internal/telephony/OperatorInfo;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateAailableNetworksWithEONS: before operator="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 521
    invoke-virtual {v4}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .line 522
    .local v3, numeric:Ljava/lang/String;
    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-virtual {p0, v3, v9, v10}, Lcom/android/internal/telephony/gsm/EonsHandler;->lookupEONSName(Ljava/lang/String;IZ)Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    move-result-object v5

    .line 523
    .local v5, pnnname:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;
    if-eqz v5, :cond_2

    .line 524
    invoke-virtual {v4}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v8

    .line 525
    .local v8, str:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/internal/telephony/OperatorInfo;->getRat()Ljava/lang/String;

    move-result-object v6

    .line 526
    .local v6, rat:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 527
    const-string v9, " 2G"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, " 2G"

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 528
    :cond_0
    const-string v9, " 2G"

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 533
    :cond_1
    :goto_1
    iget-object v9, v5, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->longName:Ljava/lang/String;

    if-eqz v9, :cond_5

    iget-object v9, v5, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->longName:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_5

    iget-object v1, v5, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->longName:Ljava/lang/String;

    .line 536
    .local v1, longname:Ljava/lang/String;
    :goto_2
    iget-object v9, v5, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->shortName:Ljava/lang/String;

    if-eqz v9, :cond_6

    iget-object v9, v5, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->shortName:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_6

    iget-object v7, v5, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->shortName:Ljava/lang/String;

    .line 539
    .local v7, shortname:Ljava/lang/String;
    :goto_3
    new-instance v2, Lcom/android/internal/telephony/OperatorInfo;

    invoke-virtual {v4}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lcom/android/internal/telephony/OperatorInfo;->getState()Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v10

    invoke-direct {v2, v1, v7, v9, v10}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo$State;)V

    .line 543
    .local v2, newop:Lcom/android/internal/telephony/OperatorInfo;
    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/OperatorInfo;->setRat(Ljava/lang/String;)V

    .line 544
    invoke-virtual {p1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 545
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateAailableNetworksWithEONS: after operator="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 518
    .end local v1           #longname:Ljava/lang/String;
    .end local v2           #newop:Lcom/android/internal/telephony/OperatorInfo;
    .end local v6           #rat:Ljava/lang/String;
    .end local v7           #shortname:Ljava/lang/String;
    .end local v8           #str:Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 529
    .restart local v6       #rat:Ljava/lang/String;
    .restart local v8       #str:Ljava/lang/String;
    :cond_3
    const-string v9, " 3G"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, " 3G"

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 530
    :cond_4
    const-string v9, " 3G"

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 533
    :cond_5
    invoke-virtual {v4}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 536
    .restart local v1       #longname:Ljava/lang/String;
    :cond_6
    invoke-virtual {v4}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 549
    .end local v0           #i:I
    .end local v1           #longname:Ljava/lang/String;
    .end local v3           #numeric:Ljava/lang/String;
    .end local v4           #operator:Lcom/android/internal/telephony/OperatorInfo;
    .end local v5           #pnnname:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;
    .end local v6           #rat:Ljava/lang/String;
    .end local v8           #str:Ljava/lang/String;
    :cond_7
    return-void
.end method

.method updateEONSName(Landroid/telephony/ServiceState;Landroid/telephony/gsm/GsmCellLocation;)Z
    .locals 7
    .parameter "servicestate"
    .parameter "cellloc"

    .prologue
    const/4 v6, 0x1

    .line 262
    const/4 v0, 0x0

    .line 263
    .local v0, changed:Z
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLPNNName:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    .line 264
    .local v3, val:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;
    iget v4, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 265
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/EonsHandler;->getNameFromPnnRecord(I)Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    move-result-object v3

    .line 272
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLPNNName:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 273
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLPNNName:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    .line 274
    const/4 v0, 0x1

    .line 276
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/EonsHandler;->updateServiceState(Landroid/telephony/ServiceState;)V

    .line 277
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateEONSName: mOPLPNNName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLPNNName:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", changed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 278
    return v0

    .line 267
    :cond_2
    iget v4, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    if-ne v4, v6, :cond_0

    .line 268
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 269
    .local v2, operatorNumeric:Ljava/lang/String;
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    .line 270
    .local v1, lac:I
    :goto_1
    invoke-virtual {p0, v2, v1, v6}, Lcom/android/internal/telephony/gsm/EonsHandler;->lookupEONSName(Ljava/lang/String;IZ)Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    move-result-object v3

    goto :goto_0

    .line 269
    .end local v1           #lac:I
    :cond_3
    const/4 v1, -0x1

    goto :goto_1
.end method
