.class Landroid/net/wifi/MotWifiScan$MotPNOCtrl;
.super Ljava/lang/Object;
.source "MotWifiScan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/MotWifiScan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MotPNOCtrl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/MotWifiScan$MotPNOCtrl$ScanTime;
    }
.end annotation


# static fields
.field public static final MOT_ACTION_PNO_CHANGE_SCAN_FREQ:Ljava/lang/String; = "com.motorola.wifi.MotWifiScan.action.CHANGE_SCAN_FREQ"

.field private static final PNO_CHECK_STEPS:I = 0x6

.field public static final PNO_CMD_CHANGE_SCAN_FREQ:I = 0x3

.field public static final PNO_CMD_DRIVER_EVENT:I = 0x7

.field public static final PNO_CMD_DRIVER_EVENT_CHECK:I = 0x8

.field public static final PNO_CMD_PLUG_CHANGE:I = 0x4

.field public static final PNO_CMD_START:I = 0x1

.field public static final PNO_CMD_STOP:I = 0x2

.field public static final PNO_CMD_SUPP_CONNECTION_CHANGE:I = 0x6

.field public static final PNO_CMD_SUPP_STATE_CHANGE:I = 0x5

.field private static final PNO_DEFAULT_SCAN_CYCLE:I = 0x64

.field private static final PNO_DEFAULT_SCAN_DURATION:I = 0x2d

.field public static final PNO_RUNNING:I = 0x1

.field public static final PNO_SCANNING:I = 0x2

.field public static final PNO_STOPPED:I = 0x0

.field private static final PNO_TAG:Ljava/lang/String; = "MotPNOCtrl"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mPNOChangeScanFreqIntent:Landroid/app/PendingIntent;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private pnoCheckStep:I

.field private pnoCtrlTable:[Landroid/net/wifi/MotWifiScan$MotPNOCtrl$ScanTime;

.field private pnoNextStep:I

.field private pnoState:I

.field final synthetic this$0:Landroid/net/wifi/MotWifiScan;


# direct methods
.method constructor <init>(Landroid/net/wifi/MotWifiScan;)V
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 772
    iput-object p1, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->this$0:Landroid/net/wifi/MotWifiScan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 764
    iput-object v5, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoCtrlTable:[Landroid/net/wifi/MotWifiScan$MotPNOCtrl$ScanTime;

    .line 765
    iput v6, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoNextStep:I

    .line 766
    iput v6, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoCheckStep:I

    .line 774
    #getter for: Landroid/net/wifi/MotWifiScan;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/net/wifi/MotWifiScan;->access$800(Landroid/net/wifi/MotWifiScan;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 775
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.motorola.wifi.MotWifiScan.action.CHANGE_SCAN_FREQ"

    invoke-direct {v1, v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 776
    .local v1, scanFreqIntent:Landroid/content/Intent;
    #getter for: Landroid/net/wifi/MotWifiScan;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/net/wifi/MotWifiScan;->access$800(Landroid/net/wifi/MotWifiScan;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->mPNOChangeScanFreqIntent:Landroid/app/PendingIntent;

    .line 778
    #getter for: Landroid/net/wifi/MotWifiScan;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/net/wifi/MotWifiScan;->access$800(Landroid/net/wifi/MotWifiScan;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 779
    .local v0, pm:Landroid/os/PowerManager;
    const-string v2, "MotPNOCtrl"

    invoke-virtual {v0, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 780
    iget-object v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 782
    iput v6, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoState:I

    .line 783
    iput v6, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoNextStep:I

    .line 785
    new-array v2, v4, [Landroid/net/wifi/MotWifiScan$MotPNOCtrl$ScanTime;

    iput-object v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoCtrlTable:[Landroid/net/wifi/MotWifiScan$MotPNOCtrl$ScanTime;

    .line 786
    iget-object v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoCtrlTable:[Landroid/net/wifi/MotWifiScan$MotPNOCtrl$ScanTime;

    new-instance v3, Landroid/net/wifi/MotWifiScan$MotPNOCtrl$ScanTime;

    const/16 v4, 0x2d

    const/16 v5, 0x13b

    invoke-direct {v3, p0, v4, v5}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl$ScanTime;-><init>(Landroid/net/wifi/MotWifiScan$MotPNOCtrl;II)V

    aput-object v3, v2, v6

    .line 787
    return-void
.end method

.method private setAlarm()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 834
    iget v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoNextStep:I

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoCtrlTable:[Landroid/net/wifi/MotWifiScan$MotPNOCtrl$ScanTime;

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoState:I

    if-eq v2, v3, :cond_1

    .line 855
    :cond_0
    :goto_0
    return-void

    .line 837
    :cond_1
    iget v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoNextStep:I

    iget-object v3, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoCtrlTable:[Landroid/net/wifi/MotWifiScan$MotPNOCtrl$ScanTime;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 842
    iget-object v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoCtrlTable:[Landroid/net/wifi/MotWifiScan$MotPNOCtrl$ScanTime;

    iget v3, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoNextStep:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    iget v2, v2, Landroid/net/wifi/MotWifiScan$MotPNOCtrl$ScanTime;->duration:I

    if-lez v2, :cond_0

    .line 848
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 849
    .local v0, triggerTime:J
    iget-object v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoCtrlTable:[Landroid/net/wifi/MotWifiScan$MotPNOCtrl$ScanTime;

    iget v3, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoNextStep:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    iget v2, v2, Landroid/net/wifi/MotWifiScan$MotPNOCtrl$ScanTime;->duration:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 850
    iget-object v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->mPNOChangeScanFreqIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private verifyPNO()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 862
    iget-object v5, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mWifiState:I
    invoke-static {v5}, Landroid/net/wifi/MotWifiScan;->access$000(Landroid/net/wifi/MotWifiScan;)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    .line 903
    :cond_0
    :goto_0
    return v3

    .line 867
    :cond_1
    iget-object v5, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mScreenOn:Z
    invoke-static {v5}, Landroid/net/wifi/MotWifiScan;->access$700(Landroid/net/wifi/MotWifiScan;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 872
    iget-object v5, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/net/wifi/MotWifiScan;->access$800(Landroid/net/wifi/MotWifiScan;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "wifi_sleep_policy"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 876
    .local v2, wifiSleepPolicy:I
    if-eqz v2, :cond_0

    .line 881
    if-eq v2, v4, :cond_0

    .line 887
    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    iget-object v5, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mPluggedType:I
    invoke-static {v5}, Landroid/net/wifi/MotWifiScan;->access$900(Landroid/net/wifi/MotWifiScan;)I

    move-result v5

    if-nez v5, :cond_0

    .line 896
    :cond_2
    iget-object v5, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->this$0:Landroid/net/wifi/MotWifiScan;

    iget-object v5, v5, Landroid/net/wifi/MotWifiScan;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 897
    .local v1, theWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    .line 899
    .local v0, suppState:Landroid/net/wifi/SupplicantState;
    sget-object v5, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-eq v0, v5, :cond_0

    move v3, v4

    .line 903
    goto :goto_0
.end method


# virtual methods
.method public changeScanFreq()Z
    .locals 1

    .prologue
    .line 1016
    const/4 v0, 0x1

    return v0
.end method

.method public checkDrivePNO()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1166
    iget-object v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->this$0:Landroid/net/wifi/MotWifiScan;

    iget-object v2, v2, Landroid/net/wifi/MotWifiScan;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 1167
    .local v1, theWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    .line 1169
    .local v0, suppState:Landroid/net/wifi/SupplicantState;
    iget v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 1203
    :goto_0
    return-void

    .line 1175
    :cond_0
    sget-object v2, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v0, v2, :cond_1

    .line 1177
    iput v5, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoState:I

    .line 1178
    iput v5, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoCheckStep:I

    .line 1179
    iget-object v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->this$0:Landroid/net/wifi/MotWifiScan;

    iget-object v2, v2, Landroid/net/wifi/MotWifiScan;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 1180
    iget-object v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 1185
    :cond_1
    iget v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoCheckStep:I

    const/4 v3, 0x6

    if-ge v2, v3, :cond_2

    .line 1186
    iget-object v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->this$0:Landroid/net/wifi/MotWifiScan;

    iget-object v2, v2, Landroid/net/wifi/MotWifiScan;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 1188
    iget v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoCheckStep:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoCheckStep:I

    .line 1189
    iget-object v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mMotWifiScanHandler:Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;
    invoke-static {v2}, Landroid/net/wifi/MotWifiScan;->access$100(Landroid/net/wifi/MotWifiScan;)Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mMotWifiScanHandler:Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;
    invoke-static {v3}, Landroid/net/wifi/MotWifiScan;->access$100(Landroid/net/wifi/MotWifiScan;)Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v5, v4, v5}, Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1197
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->this$0:Landroid/net/wifi/MotWifiScan;

    iget-object v2, v2, Landroid/net/wifi/MotWifiScan;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 1198
    iput v5, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoCheckStep:I

    .line 1199
    iput v5, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoState:I

    .line 1200
    iget-object v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1201
    invoke-virtual {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->start()Z

    goto :goto_0
.end method

.method public handleDrivePNO()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1134
    iget v0, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoState:I

    if-eq v0, v2, :cond_0

    .line 1135
    const-string v0, "MotPNOCtrl"

    const-string v1, "handleDrivePNO: PNO is not in RUNNING state, do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    :goto_0
    return-void

    .line 1144
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->stop()Z

    .line 1146
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1147
    const-string v0, "MotPNOCtrl"

    const-string v1, "handleDrivePNO: will start scanning now"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    const/4 v0, 0x2

    iput v0, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoState:I

    .line 1149
    iput v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoCheckStep:I

    .line 1153
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mMotWifiScanHandler:Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;
    invoke-static {v0}, Landroid/net/wifi/MotWifiScan;->access$100(Landroid/net/wifi/MotWifiScan;)Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mMotWifiScanHandler:Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;
    invoke-static {v1}, Landroid/net/wifi/MotWifiScan;->access$100(Landroid/net/wifi/MotWifiScan;)Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v3, v2, v3}, Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public onMsg(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 792
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    .line 826
    const-string v0, "MotPNOCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnMsg: unknown msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    :cond_0
    :goto_0
    return-void

    .line 795
    :pswitch_0
    invoke-virtual {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->start()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/net/wifi/MotWifiScan;->access$800(Landroid/net/wifi/MotWifiScan;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.motorola.wifi.MotWifiScan.action.PNO_STARTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 802
    :pswitch_1
    invoke-virtual {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->stop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/net/wifi/MotWifiScan;->access$800(Landroid/net/wifi/MotWifiScan;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.motorola.wifi.MotWifiScan.action.PNO_STOPPED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 808
    :pswitch_2
    invoke-virtual {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->changeScanFreq()Z

    goto :goto_0

    .line 811
    :pswitch_3
    invoke-virtual {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->suppStateChange()V

    goto :goto_0

    .line 814
    :pswitch_4
    invoke-virtual {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->suppConnectionChange()V

    goto :goto_0

    .line 817
    :pswitch_5
    invoke-virtual {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->plugChange()V

    goto :goto_0

    .line 820
    :pswitch_6
    invoke-virtual {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->handleDrivePNO()V

    goto :goto_0

    .line 823
    :pswitch_7
    invoke-virtual {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->checkDrivePNO()V

    goto :goto_0

    .line 792
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public plugChange()V
    .locals 2

    .prologue
    .line 910
    iget v0, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->verifyPNO()Z

    move-result v0

    if-nez v0, :cond_1

    .line 912
    invoke-virtual {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->stop()Z

    .line 921
    :cond_0
    :goto_0
    return-void

    .line 916
    :cond_1
    iget v0, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoState:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->verifyPNO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 918
    invoke-virtual {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->start()Z

    goto :goto_0
.end method

.method public start()Z
    .locals 1

    .prologue
    .line 972
    const/4 v0, 0x1

    return v0
.end method

.method public stop()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1023
    iget v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoState:I

    if-nez v2, :cond_1

    .line 1024
    iput v1, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoNextStep:I

    .line 1058
    :cond_0
    :goto_0
    return v0

    .line 1028
    :cond_1
    iget v2, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 1029
    iput v1, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoState:I

    .line 1030
    iput v1, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoNextStep:I

    .line 1031
    iput v1, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoCheckStep:I

    .line 1032
    iget-object v1, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1034
    invoke-static {}, Landroid/net/wifi/MotWifiScan;->access$300()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1035
    iget-object v1, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->this$0:Landroid/net/wifi/MotWifiScan;

    #calls: Landroid/net/wifi/MotWifiScan;->registerSensorHubMovement()V
    invoke-static {v1}, Landroid/net/wifi/MotWifiScan;->access$600(Landroid/net/wifi/MotWifiScan;)V

    goto :goto_0

    .line 1041
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    move v0, v1

    .line 1058
    goto :goto_0
.end method

.method public suppConnectionChange()V
    .locals 2

    .prologue
    .line 1113
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mSupplicantConnected:Z
    invoke-static {v0}, Landroid/net/wifi/MotWifiScan;->access$1100(Landroid/net/wifi/MotWifiScan;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1116
    invoke-virtual {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->stop()Z

    .line 1129
    :cond_0
    :goto_0
    return-void

    .line 1119
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mSupplicantConnected:Z
    invoke-static {v0}, Landroid/net/wifi/MotWifiScan;->access$1100(Landroid/net/wifi/MotWifiScan;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoState:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->verifyPNO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1121
    invoke-virtual {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->start()Z

    goto :goto_0
.end method

.method public suppStateChange()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1068
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mSupplicantState:Landroid/net/wifi/SupplicantState;
    invoke-static {v0}, Landroid/net/wifi/MotWifiScan;->access$1000(Landroid/net/wifi/MotWifiScan;)Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v0, v1, :cond_2

    .line 1069
    iget v0, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoState:I

    if-ne v0, v2, :cond_1

    .line 1071
    invoke-virtual {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->stop()Z

    .line 1106
    :cond_0
    :goto_0
    return-void

    .line 1073
    :cond_1
    iget v0, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoState:I

    if-ne v0, v3, :cond_0

    .line 1075
    invoke-virtual {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->stop()Z

    goto :goto_0

    .line 1084
    :cond_2
    iget v0, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoState:I

    if-eq v0, v2, :cond_0

    .line 1089
    iget v0, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->pnoState:I

    if-eq v0, v3, :cond_0

    .line 1094
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mSupplicantState:Landroid/net/wifi/SupplicantState;
    invoke-static {v0}, Landroid/net/wifi/MotWifiScan;->access$1000(Landroid/net/wifi/MotWifiScan;)Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mSupplicantState:Landroid/net/wifi/SupplicantState;
    invoke-static {v0}, Landroid/net/wifi/MotWifiScan;->access$1000(Landroid/net/wifi/MotWifiScan;)Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mSupplicantState:Landroid/net/wifi/SupplicantState;
    invoke-static {v0}, Landroid/net/wifi/MotWifiScan;->access$1000(Landroid/net/wifi/MotWifiScan;)Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    if-ne v0, v1, :cond_0

    .line 1097
    :cond_3
    invoke-direct {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->verifyPNO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1103
    invoke-virtual {p0}, Landroid/net/wifi/MotWifiScan$MotPNOCtrl;->start()Z

    goto :goto_0
.end method
