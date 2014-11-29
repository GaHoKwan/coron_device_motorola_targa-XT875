.class public Lcom/motorola/android/server/TetherEntitlement;
.super Ljava/lang/Object;
.source "TetherEntitlement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/server/TetherEntitlement$StateReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_RESPONSE_SPG:Ljava/lang/String; = "com.motorola.SPG.ACTION_SPG_RESULT"

.field private static final ACTION_START_SPG:Ljava/lang/String; = "com.motorola.SPG.ACTION_REQUEST_START_SPG"

.field private static final APN_CHECK_STATE:Ljava/lang/String; = "APN_CHECK_STATE"

.field private static final APP_DATA:Ljava/lang/String; = "com.motorola.SPG.APP_DATA"

.field private static final DEBUG_LOGS:Z = true

.field private static final ENTITLEMENT_CHECK_STATE_CHANGED:Ljava/lang/String; = "motorola.intent.ENTITLEMENT_STATE_CHANGE"

.field private static final ENTITLEMENT_CHECK_STATE_FAIL:I = 0x4

.field private static final ENTITLEMENT_CHECK_STATE_NONE:I = 0x1

.field private static final ENTITLEMENT_CHECK_STATE_SUCCESS:I = 0x3

.field private static final ENTITLEMENT_CHECK_STATE_VERIFYING:I = 0x2

.field private static final EXTRA_ENTITLEMENT_CHECK_NO_FEATURE:Ljava/lang/String; = "-3"

.field private static final EXTRA_ENTITLEMENT_CHECK_STATE:Ljava/lang/String; = "entitlement_state"

.field private static final EXTRA_ENTITLEMENT_CHECK_STATUS_CODE:Ljava/lang/String; = "entitlement_status_code"

.field private static final FEATURE_CODE:Ljava/lang/String; = "com.motorola.SPG.FEATURE_CODE"

.field private static final FEATURE_MHS:Ljava/lang/String; = "MHS"

.field private static final NOTIF_ID_OFFSET:I = 0x3039

.field private static final OPERATOR_NAME_ATT:Ljava/lang/String; = "att"

.field private static final OPERATOR_NAME_VZW:Ljava/lang/String; = "vzw"

.field private static final REQUEST_START_ENTITLEMENT_CHECK:Ljava/lang/String; = "com.motorola.intent.ACTION_ENTITLEMENT_CHECK"

.field private static final RESPONSE_SPG_SUCCESS:Ljava/lang/String; = "200"

.field private static final STATUS:Ljava/lang/String; = "com.motorola.SPG.STATUS"

.field private static final TAG:Ljava/lang/String; = "TetherEntitlement"

.field private static final USB_TETHER_PENDING:Ljava/lang/String; = "USB_TETHER_PENDING"

.field private static mUsbRegexs:[Ljava/lang/String;


# instance fields
.field mCm:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mEntitlementCheckState:I

.field private mOperatorName:Ljava/lang/String;

.field private mPendingTetherEnable:Z

.field private mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mUsbConnectNotification:Landroid/app/Notification;

.field private mUsbTetherAuthErrorNotif:Landroid/app/Notification;

.field private mUsbTetherAuthNotif:Landroid/app/Notification;

.field private mUsbTetherConnectErrorNotif:Landroid/app/Notification;

.field private mUsbTetherConnectNotif:Landroid/app/Notification;

.field private mUsbTetherReadyNotif:Landroid/app/Notification;

.field private spgResponseReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z

    .line 73
    const/4 v1, 0x1

    iput v1, p0, Lcom/motorola/android/server/TetherEntitlement;->mEntitlementCheckState:I

    .line 91
    iput-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mOperatorName:Ljava/lang/String;

    .line 253
    new-instance v1, Lcom/motorola/android/server/TetherEntitlement$1;

    invoke-direct {v1, p0}, Lcom/motorola/android/server/TetherEntitlement$1;-><init>(Lcom/motorola/android/server/TetherEntitlement;)V

    iput-object v1, p0, Lcom/motorola/android/server/TetherEntitlement;->spgResponseReceiver:Landroid/content/BroadcastReceiver;

    .line 95
    iput-object p1, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    .line 96
    iget-object v1, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/motorola/android/server/TetherEntitlement;->mCm:Landroid/net/ConnectivityManager;

    .line 97
    iget-object v1, p0, Lcom/motorola/android/server/TetherEntitlement;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/motorola/android/server/TetherEntitlement;->mUsbRegexs:[Ljava/lang/String;

    .line 99
    const-string v1, "com.motorola.service.entitlement"

    invoke-direct {p0, v1}, Lcom/motorola/android/server/TetherEntitlement;->isPackageFound(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    const-string v1, "att"

    iput-object v1, p0, Lcom/motorola/android/server/TetherEntitlement;->mOperatorName:Ljava/lang/String;

    .line 104
    :cond_0
    :goto_0
    const-string v1, "TetherEntitlement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOperatorName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/android/server/TetherEntitlement;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v1, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;

    invoke-direct {v1, p0, v4}, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;-><init>(Lcom/motorola/android/server/TetherEntitlement;Lcom/motorola/android/server/TetherEntitlement$1;)V

    iput-object v1, p0, Lcom/motorola/android/server/TetherEntitlement;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 107
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 108
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "motorola.intent.ENTITLEMENT_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/android/server/TetherEntitlement;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    return-void

    .line 101
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    const-string v1, "com.motorola.service.vzw.entitlement"

    invoke-direct {p0, v1}, Lcom/motorola/android/server/TetherEntitlement;->isPackageFound(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    const-string v1, "vzw"

    iput-object v1, p0, Lcom/motorola/android/server/TetherEntitlement;->mOperatorName:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/motorola/android/server/TetherEntitlement;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/motorola/android/server/TetherEntitlement;->mEntitlementCheckState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/motorola/android/server/TetherEntitlement;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherReadyNotif(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/motorola/android/server/TetherEntitlement;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/motorola/android/server/TetherEntitlement;->mEntitlementCheckState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/motorola/android/server/TetherEntitlement;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherConnectErrorNotif(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/motorola/android/server/TetherEntitlement;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/motorola/android/server/TetherEntitlement;->spgResponseReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/android/server/TetherEntitlement;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/android/server/TetherEntitlement;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z

    return v0
.end method

.method static synthetic access$302(Lcom/motorola/android/server/TetherEntitlement;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z

    return p1
.end method

.method static synthetic access$400(Lcom/motorola/android/server/TetherEntitlement;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/motorola/android/server/TetherEntitlement;->mOperatorName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/android/server/TetherEntitlement;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthNotif(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/motorola/android/server/TetherEntitlement;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthErrorNotif(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/motorola/android/server/TetherEntitlement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/motorola/android/server/TetherEntitlement;->startSelfProvision()V

    return-void
.end method

.method static synthetic access$800()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/motorola/android/server/TetherEntitlement;->mUsbRegexs:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/motorola/android/server/TetherEntitlement;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherConnectNotif(Z)V

    return-void
.end method

.method private createUsbTetherAuthIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 567
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 568
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x4000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private isPackageFound(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    const/4 v1, 0x1

    .line 274
    const-string v2, "TetherEntitlement"

    const-string v3, "isPackageFound()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_0
    return v1

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "TetherEntitlement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setUsbTetherAuthErrorNotif(Z)V
    .locals 7
    .parameter "visible"

    .prologue
    .line 481
    const-string v4, "TetherEntitlement"

    const-string v5, "setUsbTetherAuthErrorNotif()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 484
    .local v2, notifManager:Landroid/app/NotificationManager;
    if-nez v2, :cond_0

    .line 514
    :goto_0
    return-void

    .line 488
    :cond_0
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const v5, 0x1040575

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 490
    .local v3, title:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const v5, 0x1040576

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, message:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthErrorNotif:Landroid/app/Notification;

    if-nez v4, :cond_1

    .line 494
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    iput-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthErrorNotif:Landroid/app/Notification;

    .line 495
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthErrorNotif:Landroid/app/Notification;

    const v5, 0x108055e

    iput v5, v4, Landroid/app/Notification;->icon:I

    .line 497
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthErrorNotif:Landroid/app/Notification;

    const-wide/16 v5, 0x0

    iput-wide v5, v4, Landroid/app/Notification;->when:J

    .line 498
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthErrorNotif:Landroid/app/Notification;

    const/16 v5, 0x10

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 499
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthErrorNotif:Landroid/app/Notification;

    iput-object v3, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 501
    :cond_1
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthErrorNotif:Landroid/app/Notification;

    iget v1, v4, Landroid/app/Notification;->icon:I

    .line 503
    .local v1, notifId:I
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthErrorNotif:Landroid/app/Notification;

    iget-object v5, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/motorola/android/server/TetherEntitlement;->createUsbTetherAuthIntent()Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v4, v5, v3, v0, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 506
    if-eqz p1, :cond_2

    .line 508
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthErrorNotif:Landroid/app/Notification;

    invoke-virtual {v2, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 512
    :cond_2
    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private setUsbTetherAuthNotif(Z)V
    .locals 7
    .parameter "visible"

    .prologue
    .line 346
    const-string v4, "TetherEntitlement"

    const-string v5, "setUsbTetherAuthNotif()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 349
    .local v2, notifManager:Landroid/app/NotificationManager;
    if-nez v2, :cond_0

    .line 378
    :goto_0
    return-void

    .line 353
    :cond_0
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const v5, 0x104056f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 355
    .local v3, title:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const v5, 0x1040570

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, message:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthNotif:Landroid/app/Notification;

    if-nez v4, :cond_1

    .line 359
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    iput-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthNotif:Landroid/app/Notification;

    .line 360
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthNotif:Landroid/app/Notification;

    const v5, 0x108055d

    iput v5, v4, Landroid/app/Notification;->icon:I

    .line 361
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthNotif:Landroid/app/Notification;

    const-wide/16 v5, 0x0

    iput-wide v5, v4, Landroid/app/Notification;->when:J

    .line 362
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthNotif:Landroid/app/Notification;

    const/16 v5, 0x22

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 363
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthNotif:Landroid/app/Notification;

    iput-object v3, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 366
    :cond_1
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthNotif:Landroid/app/Notification;

    iget v1, v4, Landroid/app/Notification;->icon:I

    .line 368
    .local v1, notifId:I
    if-eqz p1, :cond_2

    .line 370
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthNotif:Landroid/app/Notification;

    iget-object v5, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/motorola/android/server/TetherEntitlement;->createUsbTetherAuthIntent()Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v4, v5, v3, v0, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 372
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherAuthNotif:Landroid/app/Notification;

    invoke-virtual {v2, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 376
    :cond_2
    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private setUsbTetherConnectErrorNotif(Z)V
    .locals 7
    .parameter "visible"

    .prologue
    .line 525
    const-string v4, "TetherEntitlement"

    const-string v5, "setUsbTetherConnectErrorNotif()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 528
    .local v2, notifManager:Landroid/app/NotificationManager;
    if-nez v2, :cond_0

    .line 557
    :goto_0
    return-void

    .line 532
    :cond_0
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const v5, 0x1040577

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 534
    .local v3, title:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const v5, 0x1040578

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 537
    .local v0, message:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectErrorNotif:Landroid/app/Notification;

    if-nez v4, :cond_1

    .line 538
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    iput-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectErrorNotif:Landroid/app/Notification;

    .line 539
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectErrorNotif:Landroid/app/Notification;

    const v5, 0x108055e

    iput v5, v4, Landroid/app/Notification;->icon:I

    .line 541
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectErrorNotif:Landroid/app/Notification;

    const-wide/16 v5, 0x0

    iput-wide v5, v4, Landroid/app/Notification;->when:J

    .line 542
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectErrorNotif:Landroid/app/Notification;

    const/16 v5, 0x10

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 543
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectErrorNotif:Landroid/app/Notification;

    iput-object v3, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 546
    :cond_1
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectErrorNotif:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->icon:I

    add-int/lit16 v1, v4, 0x3039

    .line 547
    .local v1, notifId:I
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectErrorNotif:Landroid/app/Notification;

    iget-object v5, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/motorola/android/server/TetherEntitlement;->createUsbTetherAuthIntent()Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v4, v5, v3, v0, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 549
    if-eqz p1, :cond_2

    .line 551
    iget-object v4, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectErrorNotif:Landroid/app/Notification;

    invoke-virtual {v2, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 555
    :cond_2
    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private setUsbTetherConnectNotif(Z)V
    .locals 9
    .parameter "visible"

    .prologue
    const/4 v8, 0x0

    .line 389
    const-string v6, "TetherEntitlement"

    const-string v7, "setUsbTetherConnectNotif()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 392
    .local v3, notifManager:Landroid/app/NotificationManager;
    if-nez v3, :cond_0

    .line 423
    :goto_0
    return-void

    .line 396
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 397
    .local v0, intent:Landroid/content/Intent;
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.TetherSettings"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    const/high16 v6, 0x4000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 399
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    invoke-static {v6, v8, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 400
    .local v4, pi:Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const v7, 0x1040571

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 402
    .local v5, title:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const v7, 0x1040572

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 404
    .local v1, message:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectNotif:Landroid/app/Notification;

    if-nez v6, :cond_1

    .line 405
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectNotif:Landroid/app/Notification;

    .line 406
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectNotif:Landroid/app/Notification;

    const v7, 0x108055d

    iput v7, v6, Landroid/app/Notification;->icon:I

    .line 407
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectNotif:Landroid/app/Notification;

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    .line 408
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectNotif:Landroid/app/Notification;

    const/16 v7, 0x22

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 409
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectNotif:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 412
    :cond_1
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectNotif:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    add-int/lit16 v2, v6, 0x3039

    .line 414
    .local v2, notifId:I
    if-eqz p1, :cond_2

    .line 416
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectNotif:Landroid/app/Notification;

    iget-object v7, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v5, v1, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 417
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherConnectNotif:Landroid/app/Notification;

    invoke-virtual {v3, v2, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 421
    :cond_2
    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private setUsbTetherReadyNotif(Z)V
    .locals 9
    .parameter "visible"

    .prologue
    const/4 v8, 0x0

    .line 436
    const-string v6, "TetherEntitlement"

    const-string v7, "setUsbTetherReadyNotif()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 439
    .local v3, notifManager:Landroid/app/NotificationManager;
    if-nez v3, :cond_0

    .line 471
    :goto_0
    return-void

    .line 443
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 444
    .local v0, intent:Landroid/content/Intent;
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.TetherSettings"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    const/high16 v6, 0x4000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 446
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    invoke-static {v6, v8, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 447
    .local v4, pi:Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const v7, 0x1040573

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 449
    .local v5, title:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const v7, 0x1040574

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 452
    .local v1, message:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherReadyNotif:Landroid/app/Notification;

    if-nez v6, :cond_1

    .line 453
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherReadyNotif:Landroid/app/Notification;

    .line 454
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherReadyNotif:Landroid/app/Notification;

    const v7, 0x108055c

    iput v7, v6, Landroid/app/Notification;->icon:I

    .line 455
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherReadyNotif:Landroid/app/Notification;

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    .line 456
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherReadyNotif:Landroid/app/Notification;

    const/16 v7, 0x22

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 457
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherReadyNotif:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 460
    :cond_1
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherReadyNotif:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    add-int/lit16 v2, v6, 0x303a

    .line 462
    .local v2, notifId:I
    if-eqz p1, :cond_2

    .line 464
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherReadyNotif:Landroid/app/Notification;

    iget-object v7, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v5, v1, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 465
    iget-object v6, p0, Lcom/motorola/android/server/TetherEntitlement;->mUsbTetherReadyNotif:Landroid/app/Notification;

    invoke-virtual {v3, v2, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 469
    :cond_2
    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private startSelfProvision()V
    .locals 4

    .prologue
    .line 285
    const-string v2, "TetherEntitlement"

    const-string v3, "startSelfProvision begins"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.motorola.SPG.ACTION_SPG_RESULT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 287
    .local v1, spgResponseFilter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/motorola/android/server/TetherEntitlement;->spgResponseReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 288
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.motorola.SPG.ACTION_REQUEST_START_SPG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, spgIntent:Landroid/content/Intent;
    const-string v2, "com.motorola.SPG.FEATURE_CODE"

    const-string v3, "MHS"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    iget-object v2, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 291
    return-void
.end method


# virtual methods
.method public checkEntitlement()Z
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 295
    const-string v7, "TetherEntitlement"

    const-string v8, "checkEntitlement()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v7, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 300
    .local v4, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, simOperator:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v10, :cond_2

    .line 302
    :cond_0
    const-string v7, "TetherEntitlement"

    const-string v8, "SIM operator is null or too small"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "APN_CHECK_STATE"

    invoke-static {v7, v8}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/motorola/android/server/TetherEntitlement;->mEntitlementCheckState:I

    .line 312
    const-string v7, "TetherEntitlement"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Saved entitlement State: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/motorola/android/server/TetherEntitlement;->mEntitlementCheckState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :goto_0
    iget v7, p0, Lcom/motorola/android/server/TetherEntitlement;->mEntitlementCheckState:I

    packed-switch v7, :pswitch_data_0

    :goto_1
    move v5, v6

    .line 335
    :goto_2
    return v5

    .line 304
    :cond_2
    const-string v7, "TetherEntitlement"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SIM operator = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {v2, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 306
    .local v3, simOperatorFiveChar:Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v7, "00101"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    .line 313
    .end local v3           #simOperatorFiveChar:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 314
    .local v0, e:Ljava/lang/Throwable;
    const-string v7, "TetherEntitlement"

    const-string v8, "entitlement State not found."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 319
    .end local v0           #e:Ljava/lang/Throwable;
    :pswitch_0
    const-string v7, "TetherEntitlement"

    const-string v8, "Sending Intent to start entitlement check."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iput-boolean v5, p0, Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z

    .line 321
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.motorola.intent.ACTION_ENTITLEMENT_CHECK"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 322
    .local v1, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    const-string v7, "com.motorola.permission.ENTITLEMENT"

    invoke-virtual {v5, v1, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    .line 326
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_1
    const-string v7, "TetherEntitlement"

    const-string v8, "SUCCESS : Dont start entitlement check."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v7, p0, Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "USB_TETHER_PENDING"

    invoke-static {v7, v8, v6}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 331
    :pswitch_2
    iput-boolean v5, p0, Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z

    goto :goto_1

    .line 316
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
