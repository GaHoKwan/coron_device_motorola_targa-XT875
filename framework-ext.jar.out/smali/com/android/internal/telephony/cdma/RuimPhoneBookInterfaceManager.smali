.class public Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;
.super Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
.source "RuimPhoneBookInterfaceManager.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "CDMA"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 39
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getAdnCache()Lcom/android/internal/telephony/AdnRecordCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->dispose()V

    .line 48
    return-void
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 52
    :try_start_0
    invoke-super {p0}, Landroid/os/Binder;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    const-string v1, "CDMA"

    const-string v2, "RuimPhoneBookInterfaceManager finalized"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, throwable:Ljava/lang/Throwable;
    const-string v1, "CDMA"

    const-string v2, "Error while finalizing:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAdnRecordsSize(I)[I
    .locals 5
    .parameter "efid"

    .prologue
    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAdnRecordsSize: efid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 71
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 72
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 73
    const/4 v2, 0x3

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordSize:[I

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result p1

    .line 77
    const/16 v2, 0x4f30

    if-eq p1, v2, :cond_1

    .line 79
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 80
    .local v1, status:Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 82
    .local v0, response:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 83
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 84
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 91
    .end local v0           #response:Landroid/os/Message;
    .end local v1           #status:Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_0
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordSize:[I

    return-object v2

    .line 88
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v2}, Lcom/android/internal/telephony/AdnRecordCache;->getUsimAdnSize()[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordSize:[I

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 97
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RuimPbInterfaceManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 101
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RuimPbInterfaceManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void
.end method

.method public updateRuimRecords(Lcom/android/internal/telephony/IccRecords;)V
    .locals 1
    .parameter "iccRecords"

    .prologue
    .line 61
    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p1}, Lcom/android/internal/telephony/IccRecords;->getAdnCache()Lcom/android/internal/telephony/AdnRecordCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    goto :goto_0
.end method